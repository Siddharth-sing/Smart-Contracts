// Solidity program to 
// demonstrate view
// functions
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
  
// // Defining a contract
// contract Test {
      
//     // Declaring state 
//     // variables
//     uint num1 = 2; 
//     uint num2 = 4;
  
//    // Defining view function to  
//    // calculate product and sum 
//    // of 2 numbers
//    function getResult(
//    ) public view returns(
//      uint product, uint sum){
    
//       product = num1 * num2;
//       sum = num1 + num2; 
//    }
// }

contract ViewAndPure {
    uint public x = 1; /// This is a state variabe (It is stored in the contract storage)

    // Promise not to modify the state but it can read state vars.
    function addToX(uint y) public view returns (uint) {
        // x = 15; Not allowed in view as well as pure function
        return x + y;
    }

    // Promise not to modify or read from the state.
    function add(uint i, uint j) public pure returns (uint) {
        //return x + j; pure function even can't access the state variables
        return i+j;
    }

    function addT(uint t) public returns (uint) {
        //return x + j; pure function even can't access the state variables
        x++; // if the function is not declared with either view or pure then state variables can be modefied but it costs gas.
        return t+x; // It won't be returning anything.
    }
}