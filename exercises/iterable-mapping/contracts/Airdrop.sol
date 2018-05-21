pragma solidity 0.4.23;

contract Airdrop {
    address[] public addresses;
    mapping(address => bool) public isSet;
    mapping(address => uint) public balances;

    // implement addAddress(address) that adds address to the addresses array
    // make a precondition that address is not a duplicate

    // implement removeAddress(address) that removes address from the addresses array
    // make a precondition that address is already set

    // implement airdrop(uint value) that increase balance of each address by specified value
}
