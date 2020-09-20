// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "truffle/Assert.sol";
import "../contracts/Types.sol";

contract TestTypes {
    function testCheckBoolInputOne() external {
        Types types = new Types();
        // Pass input as `false`
        (bool output, bool one) = types.checkBoolInput(false);
        Assert.equal(output, true, "Output is true as expected!");
        Assert.equal(one, false, "Output is false as expected!");
    }

    function testCheckBoolInputTwo() external {
        Types types = new Types();
        // Pass input as `true`
        (bool output, bool one) = types.checkBoolInput(true);
        Assert.equal(one, true, "Output is true as expected!");
        Assert.equal(output, false, "Output is false as expected!");
    }
}