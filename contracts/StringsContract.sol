//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract StringContract{

    string public myString = "Hello World";
    bytes public myByte = "Hello World";

    function setNewString(string memory _newString) public{
        myString = _newString;

    }
   
    function compareStrings(string memory _cString) public view returns(bool){
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_cString));
    }

     function getBytesLength() public view returns(uint) {
        return myByte.length;
    }
}