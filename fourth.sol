// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract fourth{
    Person[] public people;
    uint public peopleCount;
    struct Person{
        string _firstName;
        string _lastName;
    }
    function addPerson(string memory _firstName,string memory _lastName) public{
        people.push(Person(_firstName,_lastName));
        peopleCount+=1;
    }

}