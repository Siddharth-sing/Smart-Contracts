//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract SampleEvents{

    mapping(address => uint) public tokenBalance;
    event TokenSent(address _from, address _to, uint _amount);
    constructor(){
        tokenBalance[msg.sender] = 100;
    }

    function sendTokens(address _to, uint _amount) public returns(bool){
        require(tokenBalance[msg.sender] >= _amount, "Not enough balance!");
        tokenBalance[msg.sender] -= _amount;
        tokenBalance[_to] += _amount;
        emit TokenSent(msg.sender, _to, _amount);
        return true; 
    }

}