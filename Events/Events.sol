// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {
    //Up to 3 parameters can be indexed
    //indexed params helps you filter
    //the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        //emit the events
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hey there!");
        emit AnotherLog();
    }
}