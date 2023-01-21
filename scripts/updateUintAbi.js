(async() => {

    const address = "0xF347b87F125F061798867c06CFe05c77Ee80BE8C";
    const abi = [
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_uint",
				"type": "uint256"
			}
		],
		"name": "setMyUint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "myUint",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
];


    let contractInstance = new web3.eth.Contract(abi, address);

    console.log(await contractInstance.methods.myUint().call());
    let accounts = await web3.eth.getAccounts();
    await contractInstance.methods.setMyUint(98).send({from: accounts[0]});

    console.log(await contractInstance.methods.myUint().call());
})();