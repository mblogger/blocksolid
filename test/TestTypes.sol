// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "truffle/Assert.sol";
import "../contracts/Types.sol";

contract TestTypes {
    Types types;
    function beforeEach() external {
        types = new Types();
    }

    function testCheckBoolInputOne() external {
        // Pass input as `false`
        (bool output, bool one) = types.checkBoolInput(false);
        Assert.equal(output, true, "Output is true as expected!");
        Assert.equal(one, false, "Output is false as expected!");
    }

    function testCheckBoolInputTwo() external {
        // Pass input as `true`
        (bool output, bool one) = types.checkBoolInput(true);
        Assert.equal(one, true, "Output is true as expected!");
        Assert.equal(output, false, "Output is false as expected!");
    }

    function testCheckSignedIntegerInput() external {
        (int8 inputValue, int64 inputMultiple) = types.checkSignedIntegerInput(int8(60123));
        bool checkI8 = (inputValue != int8(60123));
        bool checkI64 = (inputMultiple == 89);
        Assert.equal(checkI8, false, "checkI8 is true which is not expected!");
        Assert.equal(checkI64, true, "checkI64 is false which is not expected!");
        Assert.equal(inputValue, int8(60123), "Input state variable for int8 has some issue");
        Assert.equal(inputMultiple, 89, "Some difference in state variable size for int64");
    }

    function testCheckUnsignedIntegerInput() external {
        (uint8 inputValue, uint128 inputMultiple) = types.checkUnsignedIntegerInput(uint8(54098));
        bool checkI8 = (inputValue != uint8(54098));
        bool checkI128 = (inputMultiple != uint128(54098));

        Assert.isFalse(checkI8, 'checkI8 is true, different from expectation');
        checkI8 = (inputValue == uint8(54098));
        Assert.isTrue(checkI8, 'checkI8 is false, different from expectation');
        Assert.isTrue(checkI128, 'checkI128 is false, different from expectation');
        // TODO: Throughing exception
        // Assert.equal(inputMultiple, 68, "Some difference in state variable size for uint128");
    }

    function testCompareIntegers() external {
        bool result = types.compareIntegers(50, 32);
        Assert.isTrue(result, 'Unsigned Integer is greater than signed integer!');
    }

    function testBitOperationsIntegers() external {
        uint result = types.bitOperationsIntegers(50);
        Assert.equal(result, 115792089237316195423570985008687907853269984665640564039457584007913129639885, 'Input is greater than ~output');
    }
}