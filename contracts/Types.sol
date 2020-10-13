// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract Types {
    
    // Boolean Value Type
    function checkBoolInput(bool input) external pure returns (bool, bool) {
        bool one;
        bool output = input;
        one = input;
        // Modify default boolean value
        output = !input;
        return (output, one);
    }

    // Check signed Integer
    function checkSignedIntegerInput(int8 input) external pure returns (int8, int64) {
        int64 inputMultiple = int64(input * input);
        return (input, inputMultiple);
    }

    // Check for unsigned Integer
    function checkUnsignedIntegerInput(uint8 input) external pure returns (uint8, uint128) {
        uint128 inputMultiple = uint128(input * input);
        return (input, inputMultiple);
    }

    // Operations on Integers
    // Comparision
    function compareIntegers(uint8 uInput, uint8 input) external pure returns (bool) {
        if (uInput > input) {
            return true;
        } else {
            return false;
        }
    }

    // Bit operations
    function bitOperationsIntegers(uint input) external pure returns (uint) {
        return ~input;
    }
}