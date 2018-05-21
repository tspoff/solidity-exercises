pragma solidity 0.4.23;

contract Team {
    // define a Manager type as struct with name (string) and score (uint)
    struct Manager {
        string name;
        uint score;
    }

    // declare manager variable of type Manager
    Manager manager;

    // initialize manager witin public setManager function that accepts name and score as arguments
    function setManager(string _name, uint _score) public {
        manager.name = _name;
        manager.score = _score;
    }

    // create increaseManagerScore that accepts number of scores to add to manager.score
    function increaseManagerScore(uint _score) public {
        manager.score += _score;
    }
}
