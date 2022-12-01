//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Modifier {
    // WE will use these variables to demonstrate
    // how to use modifiers
    //with modifiers you can restrict access
    //validate inputs
    //Guard against reentrancy hack

    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        // once we deploy the contract address we used to
        //deploy will be set as owner of the contract
        owner = msg.sender;
    }

    //modifier to check if the caller is the owner

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        //tell solidity to execute the rest of code
        _;
    }

    //Modifiers can take inputs
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(address _newOwner) 
    public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    //calling a modifier after a function
    //is also possible
    modifier noReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;
        if (i >1) {
            decrement(i - 1);
        }
    }


}