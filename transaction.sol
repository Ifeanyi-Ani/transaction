// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Transactions {
    address public owner = msg.sender;
    mapping(address => uint256) public balances;

        modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function deposit() external payable onlyOwner {
        require(msg.value > 0, "You must send some ether to deposit");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        assert(balances[msg.sender]>=amount);
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function transfer(address to, uint256 amount) external {
        if (balances[msg.sender]<amount){
            revert("Insufficient balance");
        }

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

}
