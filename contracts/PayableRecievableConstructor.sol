//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract PayableRecievableConstructor{

     
    address public myAddress;
    string public myString = "Hello World";

    constructor(address _someAddress){
        myAddress = _someAddress;   
    }

    function setAddress() public {
        myAddress = msg.sender;
    }
    function updateString(string memory _newString) public payable {
        // if the value sent is 1 ether the string will be changed
        if(msg.value == 1 ether){
            myString = _newString;
        }// else the coins(ethers) will go back to the original address
        else{
            payable(msg.sender).transfer(msg.value);  // payable(msg.sender) -> we have to use payable modifier before any transacting address.
        }
        
    }
     

}