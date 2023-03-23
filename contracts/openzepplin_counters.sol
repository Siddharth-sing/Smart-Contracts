// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
import "@openzeppelin/contracts/utils/Counters.sol";

contract CountersContrat{

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;
    uint public tokenId;

    function incrementCount() public returns(uint){
        _tokenIdCounter.increment();
        tokenId = _tokenIdCounter.current();
        return tokenId;
    }
    function decrementCount() public returns(uint){
        _tokenIdCounter.decrement();
        tokenId = _tokenIdCounter.current();
        return tokenId;
    }
}
