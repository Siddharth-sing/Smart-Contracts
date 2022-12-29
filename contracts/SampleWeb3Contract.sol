//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract SampleWeb3Contract{
    
    string public myString = "Hello Ethereum Mainnet";
    
    function setNewString(string memory _myNewString) public {
 
        myString = _myNewString;
    
    }
}