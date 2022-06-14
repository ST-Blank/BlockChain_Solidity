// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ERC20Token{
    string public name;
    mapping (address=>uint) public balances;

    function mint() public{
      balances[tx.origin]++;  
    }
}
contract nine{
    
    address payable wallet;
    address public token;
    
    constructor(address payable _wallet,address _token){
        wallet=_wallet;
        token=_token;
    }
   fallback() external payable{
        buyToken();
    }
    receive() external payable{

    }
    function buyToken() public payable{
        ERC20Token _token = ERC20Token(address(token));
        _token.mint();
        wallet.transfer(msg.value);
    }
}