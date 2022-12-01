// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping {
    //mapping(keyType => valueType)

    mapping(address => uint) public myMap;

    function get(address _addr) public view returns(uint) {
        //mapping always returns a value,
        //if the value was never set, it will return the default value
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        //we update the uint value
        //of this _addr
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        //Update the value of _addr
        //to the default value
        //here an uint default value is 0
        delete myMap[_addr];
    }
}