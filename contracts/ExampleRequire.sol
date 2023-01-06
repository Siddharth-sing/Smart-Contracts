//SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract ExampleRequire{
      
      mapping(address => uint) public balanceRecieved;

      function sendMoney() public payable{
          balanceRecieved[msg.sender] += msg.value;
      }
      function withdrawMoney(address payable _to, uint _amount) public{
          require(_amount <= balanceRecieved[msg.sender], "Funds out of bound exception!");
          balanceRecieved[msg.sender] -= _amount;
          _to.transfer(_amount);
          
      }

     
}