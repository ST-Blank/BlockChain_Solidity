// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract sixth{
    uint public peopleCount=0;
    mapping(uint=>Person) public people;
    uint openingTime=1655131473;

    modifier onlyWhileOpen(){
        require(block.timestamp>=openingTime);
        _;
    }
    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName,string memory _lastName) public onlyWhileOpen{
        countIncrement();
      people[peopleCount]=Person(peopleCount,_firstName,_lastName);
    }
    function countIncrement() internal{
        peopleCount+=1;
    }

}