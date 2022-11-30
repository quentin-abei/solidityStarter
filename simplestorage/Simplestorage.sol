// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Simplestorage {
    // store a number
    uint public num;

    // writin to a state variable cost fees
    //reading is free
    function set(uint _num) public {
        num = _num;
    }

    //read a state var for free
    function read() public view returns(uint) {
        return num;
    }
}