// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ERC20Token{
    string public name;
    mapping (address=>uint) public balances;

    constructor(string memory _name){
        name=_name;
    }

    function mint() public{
        balances[tx.origin]++;  
    }

}
contract ten is ERC20Token{
    
    string public symbol;
    address[] public owners;
    uint ownerCount;
    constructor(string memory _name,string memory _symbol){
        symbol=_symbol;
    }

     function mint() public{
        super.mint();
        ownerCount++;
        owners.push(msg.sender);
    }
}