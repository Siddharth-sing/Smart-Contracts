//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MyContract{

    string public ourstring = "Hello World";

    function updateString(string memory _updateString) public {
        // string public _updateString = "My fav thing is to explore new technologies !" ;
        ourstring = _updateString;

    }

}