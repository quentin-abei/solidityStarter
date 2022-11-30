// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Counter {
    uint public count;
    //function to get the current count
    function get() public view returns(uint) {
        //this is a get function , it takes no input
        //but only returns an information
        return count;
    }

    //this function will actually be a set
    function increment() public {
        //takes no input but increment
        //our count
        count +=1;
    }

    //now we might also want to decrement
    function decrement() public {
        //this function will fail if count is 0
        //since count is an uint
        //let implement this
        require(count > 0, "cannot dec count");
        count -=1;
    }
}