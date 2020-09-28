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
}