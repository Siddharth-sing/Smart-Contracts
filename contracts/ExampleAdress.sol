//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;
import "prb-math/contracts/PRBMathUD60x18.sol";
contract ExampleAdress{

    address public addressOfSomeSM = msg.sender;

    function setSomeaddress(address _someaddress) public {
        addressOfSomeSM = _someaddress;
    }
    function getBalanceOfTheAddress() public view returns(uint){
        return addressOfSomeSM.balance;
    }
}