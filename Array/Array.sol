// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array {
    //let see how to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    //fixed size array, all elements are initialized to zero
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // solidity can return entire arrays
    //should be avoided for arrays that can grow
    //indefinitely inj length

    function getArr() public view returns(uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns(uint) {
        return arr.length;
    }

    function remove(uint index) public {
        //delete does not change the array length like push()
        //or pop()
        //it resets the element at index to it's default value
        delete arr[index];
    }

    function examples() external {
       //only fixed size array can be created
       //in memory
       uint[] memory a = new uint[](5);
   }
 }