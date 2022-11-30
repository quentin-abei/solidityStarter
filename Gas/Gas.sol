// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Gas {
    uint public i=0;
    // Gas spent are not refunded
    //your transaction will fail
    //if you use up all  gas that you send

    function forever() public{
       while(true) {
        i += 1;
       }
       //transaction will fail after all the gas
       //is spent because of this infinite loop
    }
}