// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract first{
    string value;
    function get() public view returns(string memory){
        return value;
    }
    function set(string memory _value) public{
        value = _value;
    }
    constructor(){
        value = "name";
    }
}