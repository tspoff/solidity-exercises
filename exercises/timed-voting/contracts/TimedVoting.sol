pragma solidity 0.4.23;


contract TimedVoting {
    address[] candidates;
    address[] voters;
    uint startBlock;
    uint endTimestamp;

    struct Candidate {
        uint votes;
        bool isCandidate;
    }

    mapping(address => bool) public voted;        // keep track of who already voted
    mapping(address => Candidate) public results; // keep track of the number of votes for a candidate

    modifier onlyWhenOpen() {
        // implement modifier that requires voting to be open at the time of execution
        require(block.timestamp < endTimestamp && block.number >= startBlock);
        _;
    }

    modifier onlyOneVote() {
        // implement modifier that disallows voting same voter more than once
        require(voted[msg.sender] == false);
        _;
    }

    constructor(
        address[] _candidates,
        address[] _voters,
        uint _startBlock,
        uint _endTimestamp
    ) public {
        candidates = _candidates;
        voters = _voters;
        startBlock = _startBlock;
        endTimestamp = _endTimestamp;

        // set isCandidate to true for each candidate
        for (uint i = 0; i < candidates.length; i++) {
            results[candidates[i]].isCandidate = true;
        }
    }

    function vote(address _candidate) public onlyWhenOpen onlyOneVote returns (bool) {
        // 1. make sure candidate address points to genuine candidate
        require(results[_candidate].isCandidate == true);

        // 2. increment number of votes
        results[_candidate].votes += 1;

        // 3. store information that voter already voted
        voted[msg.sender] = true;

        return true;
    }
}
