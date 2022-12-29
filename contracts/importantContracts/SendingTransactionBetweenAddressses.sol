//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract stbaContract{
    
    address public senderAddresss = msg.sender;
    address public  recieverAddress;

    function setRecieveraddress(address _newRecieveraddress) public {
            recieverAddress = _newRecieveraddress;
    }
    function sendEther() public payable{
        if(recieverAddress != address(0)){
            payable(recieverAddress).transfer(msg.value);
        }else{
            payable(senderAddresss).transfer(msg.value);
        }  
    }

   function getBalance() public view returns(uint,uint){
        return (senderAddresss.balance, recieverAddress.balance);
    }

}