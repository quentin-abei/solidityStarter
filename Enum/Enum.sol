// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum {
    //Enumerate a shipping status
    enum Status {
        Pending,
        Shiped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element
    Status public status;

    //returns uint
    /*Pending, 0
        Shiped, 1
        Accepted,2
        Rejected,3
        Canceled, 4 */

    function get() public view returns (Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function reset() public {
        delete status;
    }
}