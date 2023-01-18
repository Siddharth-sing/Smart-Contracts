//SPDX-License-Identifier:MIT
pragma solidity 0.8.16;

contract WalletFinal{

    // Task - 1       
    address payable public owner;
    constructor(){
        owner = payable(msg.sender) ;
    }
    
    // Task - 3 
    function transfer(address payable _to, uint _amount, bytes memory _payload) public returns(bytes memory) { 
        require(_amount <= address(this).balance, "Can't send more than stored in contract.");
        //require(msg.sender == owner, "Don't play around! Call the owner.");
        
        //   _to.transfer(_amount); 
        (bool success, bytes memory returnData) = _to.call{value: _amount}(_payload);
        require(success, "Aborting, call was not successful!");
        return returnData;-q    
    }

    // Task - 2
    receive() external payable {} 

}

