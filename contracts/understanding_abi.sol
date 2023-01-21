// ABI - Application Binary Interface

//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract AbiUnderstandContract{
    uint public myUint = 123;
    function setMyUint(uint _uint) public {
        myUint = _uint;
    }
}