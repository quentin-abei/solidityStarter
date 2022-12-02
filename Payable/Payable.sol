// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Payable {
    //receive ether
    address payable public owner;
    constructor() payable {
        owner = payable(msg.sender);
    }
    //deposit ether into this contract
    function deposit() public payable {}
    //can't deposit using this function
    function notPayable() public {}

    //withdraw ether from this contract
    function withdraw() public {
        uint amount = address(this).balance;

        //we made owner address payable so
        //he can receive eth
        (bool success, ) = owner.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
    //transfer eth from this contract
    //to an address

    function transfer(address payable _to, uint _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}