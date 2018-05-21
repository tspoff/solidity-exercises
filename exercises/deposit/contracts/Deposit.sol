pragma solidity 0.4.23;

import "./Ownable.sol";


contract Deposit is Ownable {
    // allow contract to accept funds upon creation
    constructor() public payable {}

    // allow owner to withdraw the entire balance
    function withdraw() public onlyOwner {
        owner.transfer(address(this).balance);
    }

    // allow contract to accept funds via regular transfer
    function () public payable {}
}
