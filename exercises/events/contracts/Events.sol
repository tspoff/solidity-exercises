pragma solidity 0.4.23;

import "../../iterable-mapping/contracts/Airdrop.sol";


contract Events is Airdrop {
    // define AddressAdded(addr) event

    // define AddressRemoved(addr) event

    // define Airdrop(value, recipientsNum) event

    function addAddress(address _address) public {
        // use super to call addAddress(address) from Airdrop
        // emit AddressAdded event
    }

    function removeAddress(address _address) public {
        // emit AddressAdded event using low-level log1 function insteadof emit
    }

    function airdrop(uint _value) public {
        // emit Airdrop event
    }
}
