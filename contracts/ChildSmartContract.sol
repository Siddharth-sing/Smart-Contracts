//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract PaymentRecieved{

    address public sender;
    uint public amount;

    constructor(address _sender, uint _amount){
        sender = _sender;
        amount = _amount;
    }
}
contract wallet{
    PaymentRecieved public payment;

    function payContract() public payable{
            payment = new PaymentRecieved(msg.sender,msg.value);
    }

}

contract wallet2{

    struct paymentRecievedStruct{
        address sender;
        uint amount;
    }
    paymentRecievedStruct public payment;

    function payContract() public payable{
                payment = paymentRecievedStruct(msg.sender,msg.value);
    }
}




