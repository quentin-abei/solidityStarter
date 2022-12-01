// SPDX-License-Identfier: MIT
pragma solidity ^0.8.13;

contract DataLocations {
    //storage - variable is a state var (store on blockchain)
    //memory - variable is in memory and it exists while
    //the function is being called
    //calldata - special data location that contains function arguments

    uint[] public arr;
    mapping(uint => address) map;

    struct MyStruct {
        uint foo;
    }

    mapping(uint => MyStruct) myStructs;

    function f() public  {
        _f(arr, map, myStructs[1]);

        MyStruct storage mystruct = myStructs[1];

        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        //do something with storage var
    }

    //return memory var
    function get(uint[] memory _arr) public returns (uint[] memory) {
        // do something
    }
    
}