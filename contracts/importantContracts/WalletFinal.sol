//SPDX-License-Identifier:MIT
pragma solidity 0.8.16;

contract Consumer{
    function getBalanceOfConsumeer() public view returns(uint) {
        return address(this).balance;
    }
}

contract WalletFinal{

    // Task - 1       
    address payable public owner;
    mapping(address => bool) public isAllowedToSend;
    mapping(address => uint) public allowance;

    constructor(){
        owner = payable(msg.sender) ;
    }
    
    // Task - 4
    function setAllowance(address _from, uint _amount) public{
        require(msg.sender == owner, "You are not allowed to set allowance.");
        allowance[_from] = _amount;
        isAllowedToSend[_from] = true;
    }
    function denySending(address _from) public {
        require(msg.sender == owner, "You are not allowed to deny any functionality.");
        isAllowedToSend[_from] = false; 
    }

    // Task - 3 and 4
    function transfer(address payable _to, uint _amount, bytes memory _payload) public returns(bytes memory) { 
        require(_amount <= address(this).balance, "Can't send more than stored in contract.");
        //require(msg.sender == owner, "Don't play around! Call the owner.");
        //   _to.transfer(_amount); 

        if(msg.sender != owner){
            require(isAllowedToSend[msg.sender], "You are not allowed to send.");
            require(allowance[msg.sender] >= _amount, "You are trying to send more than you are allowed.");
            allowance[msg.sender]-=_amount;
        }
        (bool success, bytes memory returnData) = _to.call{value: _amount}(_payload);
        require(success, "Aborting, call was not successful!");
        return returnData; 
    }

    function walletBalance() public view returns(uint) {
        return address(this).balance; 
    }  

    // Task - 2
    receive() external payable {} 

}

