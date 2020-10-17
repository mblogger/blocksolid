pragma solidity ^0.6.0;

interface Traits {
    function hasGoodTraits(uint8 traitsCount) external returns (bool);
}

contract Parent is Traits {
    address private owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier checkOwner {
        require(owner == msg.sender);
        _;
    }

    function hasGoodTraits(uint8 traitsCount) checkOwner override external returns (bool) {
        if (traitsCount > 18) {
            return true;
        }
        return false;
    }

}

contract Inheritance is Parent {
    Parent p = new Parent();
}