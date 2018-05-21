pragma solidity 0.4.23;


interface ERC20Basic {
    function totalSupply() external view returns (uint256);
    function balanceOf(address who) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
}

contract Token is ERC20Basic {
    mapping(address => uint256) balances;

    uint256 totalSupply_;

    constructor(address _owner, uint _totalSupply) public {
        totalSupply_ = _totalSupply;
        balances[_owner] = _totalSupply;
    }

    // implement totalSupply()

    // implement transfer()

    // implement balanceOf()
}
