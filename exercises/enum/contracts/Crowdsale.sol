pragma solidity 0.4.23;


contract Crowdsale {
    // define Stage enum with Presale, Open and Closed values

    Stage public stage = Stage.Closed;

    // require stage to be Presale or Open
    modifier whenNotClosed() {
    }

    function rate() view public returns (uint) {
        // rate is 50x when presale
        // rate is 5x otherwise
    }

    function buyTokens() view whenNotClosed public {
        // implementaton is irrelevant for this exercise
    }
}
