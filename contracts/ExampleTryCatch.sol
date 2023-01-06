//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract WillThrowException{

    function ProblematicFunc1() public pure{
        require(false,"Error Message");
    }
    function ProblematicFunc2() public pure{
        assert(false);
    }
}

contract ErrorHandling{
    event ErrorLog(string reason);
    event ErrorLog2(uint eCode);

    function catchError() public {
        WillThrowException e = new WillThrowException();
        try e.ProblematicFunc1(){
            // it works, further code
        }catch Error(string memory reason){  // `catch Error` is used to catch exceptions caused by require
            emit ErrorLog(reason);
        }
        
        try e.ProblematicFunc2(){
            // it works, further code
        }catch Panic(uint errorCode){  // `catch Panic` is used to catch exceptions caused by assert.
            emit ErrorLog2(errorCode);
        } 
    }
}