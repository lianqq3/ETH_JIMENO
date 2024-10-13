// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract myToken {

    // public variables here
    string public tokenName = "Julian";
    string public tokenAbbrv = "EJJ";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
   function mintToken (address _address, uint _value) public {
      totalSupply += _value;
      balances[_address] += _value;
   }

    // burn function
    function burnToken (address _address, uint _value) public {
      if(balances[_address] >= _value){
         totalSupply -= _value;
         balances[_address] -= _value;
      }
      
    }
}