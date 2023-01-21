(async () => {
    let accounts = await web3.eth.getAccounts();
    console.log("Accounts: ", accounts);

    console.log("Accounts 1:", accounts[0]);
    console.log(accounts.length);
})();