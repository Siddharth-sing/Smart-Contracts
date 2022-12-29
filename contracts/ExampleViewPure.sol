//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleViewPure{

    uint public myStorageVar=10;

    function getStorageVar() public view returns(uint){
        return myStorageVar;
    } 

    function getAdd(uint a, uint b) public pure returns(uint){
        return a+b;
    } 

}