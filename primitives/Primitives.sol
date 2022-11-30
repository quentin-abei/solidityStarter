// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Primitives {
    bool public boo = true;


    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 200;

    // negative numbers are allowed for ints

    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123;

    //minimum and maximum for ints
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    bool public defaultBool; //false
    uint public defaultUint; //0
    int public defaultInt; //0
    address public defaultAddr; //0x000000000000000000
}