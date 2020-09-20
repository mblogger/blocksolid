// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract Types {
    bool one;
    // Boolean Value Type
    function checkBoolInput(bool input) external returns (bool, bool) {
        bool output = input;
        one = input;
        // Modify default boolean value
        output = !input;
        return (output, one);
    }
}