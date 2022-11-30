// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Immutable {
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;
    // we can set them inside constructor

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}