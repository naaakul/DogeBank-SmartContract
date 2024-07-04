// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract DogeBank {
    mapping(address=>uint) balances;

    function viewBalance(address _my) public view returns(uint) {
        return balances[_my];
    }

    function deposit(uint _amount, address _receiver) external {
        require(balances[msg.sender] > _amount, "NOt ENOUGH BALANCE");

        balances[msg.sender] = balances[msg.sender] - _amount;
        balances[_receiver] += _amount;
    }
}