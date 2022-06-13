// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract sixth{
    uint public peopleCount=0;
    mapping(uint=>Person) public people;
    address owner;

    modifier onlyOwner(){
        require(msg.sender==owner);
        _;
    }
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    constructor(){
        owner= msg.sender;
    }
    function addPerson(string memory _firstName,string memory _lastName) public onlyOwner{
        countIncrement();
      people[peopleCount]=Person(peopleCount,_firstName,_lastName);
    }
    function countIncrement() internal{
        peopleCount+=1;
    }

}