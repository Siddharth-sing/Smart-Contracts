//SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract ExampleAssert{

   mapping(address => uint8) public balanceRecieved;

      function sendMoney() public payable{
          assert(msg.value == uint8(msg.value));
          balanceRecieved[msg.sender] += uint8(msg.value);
      }
      function withdrawMoney(address payable _to, uint8 _amount) public{
          require(_amount <= balanceRecieved[msg.sender], "Funds out of bound exception!");
          balanceRecieved[msg.sender] -= _amount;
          _to.transfer(_amount);
          
      }


}