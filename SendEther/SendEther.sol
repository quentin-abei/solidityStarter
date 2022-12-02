// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ReceiveEther {
    /*@notice to send ether?
    You can use 
    -transfer(2300 gas, throws error)
    -send(2300 gas, returns bool)
    -call(forward all gas or set gas, returns bool)
    */
    /*@noticz how to receive ether?
    -receive() external payable. Called if msg.data is empty
    -fallback() external payable.Else callback is called
    */
     //recommended to use call in combination with re-entrancy guards

    receive() external payable{}
    fallback() external payable {}

    function getBalance() public view returns(uint) {
        return address(this).balance;
    } 

    contract SendEther {
        function sendViatransfer(address payable _to) public payable {
            //this function is no longer recommended
            //for sending Ether
            _to.transfer(msg.value);
        }

        function sendViaSend(address payable _to) public payable {
            //Send returns a boolean indicating a success or failure
            //This function also is not recommended for sending ether
            bool sent = _to.send(msg.value);
            require(sent, "Failed to send Ether");
        }

        function sendViaCall(address payable _to) public payable {
            //Call return a boolean value indicating success or failure
            //This function is the current recommended method to use.
            (bool sent, bytes memory data) = _to.call{value: msg.value}("");
            require(sent, "Failed to send Ether");
        }
    }    
}