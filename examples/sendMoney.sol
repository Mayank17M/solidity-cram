// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.11;

contract sendMoney {

    uint public balanceReceived;

    function getMoney() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawMoney() public {
        address payable to = payable(msg.sender);

        to.transfer(this.getBalance());
    } 

    function sendMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    }
}