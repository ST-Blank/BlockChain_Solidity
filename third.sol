// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract third{
    enum State { waiting, ready, active }
    State public state;

    constructor(){
        state=State.waiting;
    }
    function activate() public{
        state=State.active;
    }
    function isactive() public view returns (bool){
        return state==State.active;

    }

}