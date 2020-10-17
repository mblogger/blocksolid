pragma solidity ^0.6.0;

import "truffle/Assert.sol";
import "../contracts/Inheritance.sol";

contract TestInheritance {
    function testParentsTraits() external {
        Inheritance inherit = new Inheritance();
        bool check = inherit.hasGoodTraits(26);
        Assert.isTrue(check, 'Check is false');
    }
}