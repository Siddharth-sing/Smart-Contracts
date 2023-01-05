//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract simpleWallet{

    mapping(address => uint) public balanceRecieved;

    function sendMoney() public payable{
        balanceRecieved[msg.sender] += msg.value;  // msg.value cannot be used without payable.

    }
    function getBalanceofSmartContract() public view returns(uint){
        return(address(this).balance);  // address(this).balance will return the balance of smart contract 
    }

    function withdrawFromContractWallet(address payable _to) public{
        uint balanceToSendOut = balanceRecieved[msg.sender]; 
        balanceRecieved[msg.sender] = 0;
        _to.transfer(balanceToSendOut);
    }

    function getAccountBalance(address ContractAddress) public view returns(uint){
        return ContractAddress.balance;  //ContractAddress.balance will return the balance of the account. 
    }
}