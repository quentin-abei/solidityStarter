// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function {
    function returnMany() 
    public
    pure
    returns(
        uint, bool, uint
    ) {
    return (1, false, 5);
    }

    function named()
    public
    pure
    returns(
        uint x,
        bool b,
        uint y
    ) {
        return(1, true, 20);
    }
    /* view function promise not to modify the state
    while pure functions promise not to modify or read from
    the state */
    
}