// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract eight{
    mapping (address=>uint) public balances;
    address payable wallet;

    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );


    constructor(address payable _wallet){
        wallet=_wallet;
    }
   fallback() external payable{
        buyToken();
    }
    receive() external payable{

    }
    function buyToken() public payable{
        balances[msg.sender]+=1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender,1);
    }
}