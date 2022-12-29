//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract boolContract{

    bool public myBoolVal = true;
    // default value of bool variable is false

    function changeBoolVal(bool _mynewBool) public{
           
           myBoolVal = _mynewBool;

    }
      function negateBoolVal(bool _mynewBool) public{
           
           myBoolVal = !_mynewBool;

    }



}