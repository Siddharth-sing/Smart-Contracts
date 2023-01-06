//SPDX-License-Identifier:MIT
pragma solidity 0.8.15;

contract Simplewallet2{

   struct Transaction{
       uint amount;
       uint timeStamp;
   }
   struct BalanceDetailsStruct{
       uint totalBalance;
       uint numsDeposites;
       mapping(uint => Transaction) deposites;
       uint numsWithdrawals;
       mapping(uint => Transaction) withdrawals;

   }
    
    mapping(address => BalanceDetailsStruct) public balanceRecieved;

    function showThisDepositDetails(address _from, uint _depositNum) public view returns(Transaction memory){
        return balanceRecieved[_from].deposites[_depositNum];
    }
    function showThisWithdrawalDetails(address _from, uint _withdrawalNum) public view returns(Transaction memory){
        return balanceRecieved[_from].withdrawals[_withdrawalNum];
    }
    

    // Deposit or send money tosmart contract

    function depositeMoneyToSmartContract() public payable{

        Transaction memory thisTransactionDeposite = Transaction(msg.value,block.timestamp);

        balanceRecieved[msg.sender].totalBalance += msg.value;
        balanceRecieved[msg.sender].numsDeposites++;
        balanceRecieved[msg.sender].deposites[balanceRecieved[msg.sender].numsDeposites]=thisTransactionDeposite;

    }

    // Withdwawal money from contract

    function withdrawFromContractWallet(address payable _to, uint _amount) public{
        
        if(_amount <= balanceRecieved[msg.sender].totalBalance){
            Transaction memory thisWithdrawalTransaction = Transaction(_amount,block.timestamp);
            balanceRecieved[msg.sender].numsWithdrawals++;
            balanceRecieved[msg.sender].withdrawals[balanceRecieved[msg.sender].numsWithdrawals] = thisWithdrawalTransaction;
            balanceRecieved[msg.sender].totalBalance -= _amount;
            _to.transfer(_amount);
        }
        
        


    }

    
    // //utility functions (not neccessary for this contract) 
    // function getAccountBalance(address ContractAddress) public view returns(uint){
    //     return ContractAddress.balance;  //ContractAddress.balance will return the balance of the account. 
    // }
    //  function getBalanceofSmartContract() public view returns(uint){
    //     return(address(this).balance);  // address(this).balance will return the balance of smart contract 
    // }

}
