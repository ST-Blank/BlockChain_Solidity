// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
library math{
    function divide(uint a,uint b)internal pure returns(uint){
        require(b>0);
        uint c=a/b;
        return c;
    }
}