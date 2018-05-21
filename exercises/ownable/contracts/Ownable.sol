pragma solidity 0.4.23;

contract Ownable {
    address public owner;

    constructor() public {
        // set owner using deployer address (use msg.sender)
    }

    // implement onlyOwner modifier that requires sender to be an owner

    // implement transferOwnership that accepts and sets address of the new owner
    // only owner should be able to use transferOwnership (use onlyOwner modifier)
}
