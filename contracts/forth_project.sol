// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract EtherDistributor {
      address owner;
     

    constructor() {
    owner = msg.sender;
    
   }
   struct Receiver {
    address payable walletAddress;
    string firstName;
    string secondName;
    uint amount;
   }

   Receiver[] public receivers;


   function checkAcctBalance(address) public view returns(uint){
      return address(this).balance;
}
   
   function addReceiver(address payable walletAddress,string memory firstName,string memory secondName,uint amount) public{
    receivers.push(Receiver(
        walletAddress,
        firstName,
        secondName,
        amount));


}

function depositEther(address payable walletAddress) payable public{}



    
        
}





