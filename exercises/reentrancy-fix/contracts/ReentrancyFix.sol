pragma solidity 0.4.23;

import "./Balances.sol";


contract SecureBalancesWithCallValue is Balances {
    function withdraw() public {
        // change code so it is not vulnerable using call.value
    }
}

contract SecureBalancesWithSend is Balances {
    function withdraw() public {
        // change code so it is not vulnerable using send
    }
}

contract SecureBalancesWithTransfer is Balances {
    function withdraw() public {
        // change code so it is not vulnerable using transfer
    }
}
