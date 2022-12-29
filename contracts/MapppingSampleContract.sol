//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract MappingSampleContract{

    mapping(uint => bool) public myMapp;
    mapping(address => bool) public myAddMap;
    mapping (uint => mapping(uint => bool)) uintUintBoolMapping;

    function setMapVal(uint _index)public{
        myMapp[_index] = true;
    }
    function setAddressMapVal(address _address)public{
        myAddMap[_address] = true;
    }

    function setuintUintBoolMapping(uint _i,uint _j,bool _value)public{
        uintUintBoolMapping[_i][_j] = _value;
    }
    function getuintUintBoolMapping(uint _i,uint _j)public view returns(bool){
        return uintUintBoolMapping[_i][_j];
    }
    

}