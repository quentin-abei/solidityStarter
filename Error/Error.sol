// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error {
    //You can throw an error by calling
    // require, revert , or assert

    function testRequire(uint _i) public pure {
       // Require should be used to validate conditionssuch as
       //inputs
       //conditions before execution
       //return values from calls to other functions
       require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        //Revert is useful when the condition to check is complex
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public num;

    function testAssert() public view {
        // to test internal errors
        //and check invariants
        assert(num == 0);
    }

    //custome error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal; withdrawAmount: _withdrawAmount});
        }
    }
}