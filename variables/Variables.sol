// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Variables {
    // states variables are stored on the blockchain
    string public text = "Hey!";
    uint public number = 120;

    function testSomething() public {
        //local variables
        //local / inside of a function
        //not saved on the blockchain
        uint array = 40;

        //global var
        //provides informations about the blockchain
        uint timestamp = block.timestamp; // current block timestamp
        address sender = msg.sender; //address of the caller
    }
}