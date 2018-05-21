pragma solidity 0.4.23;


contract Visibility {
    // add a modifier but does not change default visibility of storage variable
    uint keepMeDefault = 0;

    function makeMeVisible() pure
      // make function visible externally and internally
    {}

    function makeMeHiddenFromOthers() pure
      // make function visible only in the current contract
    {}

    function makeMeVisibleOnlyForFunctions() pure
      // make function visible only via this.func
    {}

    function makeMeVisibleForChildContracts() pure
      // make function visible only internally
    {}
}
