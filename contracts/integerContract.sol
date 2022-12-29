//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract boolContract{

    int public nint = -3;
    uint public myUnit = 250; // uint same as uint256 => 0 to (2^256)1
    uint8 public vuint8 = 250; // uint8 => 0 to (2^8)1 i.e 255

    function setMyuint(uint _myNewUint) public{
        myUnit = _myNewUint;
    }
    function incMyuint() public{
        myUnit++;
    }
    function incMyuint8() public{
        vuint8++;
    }
     function decMyuint() public{
        myUnit--;
    }
    function decMyuint8() public{
        vuint8--;
    }
    function incNint() public{
        nint++;
    }
    function decNint() public{
        nint--;
    }

}