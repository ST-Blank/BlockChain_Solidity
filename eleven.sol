// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "./math.sol";
contract eleven{
    uint public value;
    function calculate(uint _value1,uint _value2) public{
        value=math.divide(_value1,_value2);
    }
}