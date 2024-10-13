
# Create a Token Assessment

This Solidity program serves as a basic demonstration of how minting and destroying tokens function within transactions using Solidity programming. Its primary purpose is to fulfill an assessment requirement for the Metacrafters Webcourse.

## Description

This program consists of a basic contract written in Solidity, a programming language designed for creating smart contracts on the Ethereum blockchain. The contract features two functions: one for minting tokens and another for destroying tokens. This program provides a clear and accessible introduction to Solidity programming, making it a valuable foundation for more advanced projects in the future.

## Getting Started

### Executing program

To run this code, utilize Remix, an online Solidity Integrated Development Environment (IDE). Begin by visiting the Remix website at https://remix.ethereum.org.

Upon accessing the Remix platform, click the "+" icon in the left sidebar to create a new file. You may name the file as you prefer, provided it retains the .sol extension. Once the file is created, copy and paste the code provided below into your newly created file.

```javascript
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
```

To compile the Solidity code, first navigate to the "Solidity Compiler" tab located on the left sidebar. Before proceeding, ensure the Compiler version is set to 0.8.18 or another compatible version that suits your contract. Once the version is confirmed, click on "Compile myFileName.sol" to compile the contract.

After successful compilation, move over to the "Deploy & Run Transactions" tab, also found on the left sidebar. From the dropdown menu, choose the "myToken" contract and press the "Deploy" button to deploy the contract to the blockchain.

Once the contract is deployed, you can interact with it using functions like Burn or Mint. Input the necessary parameters for these functions to work, and once you've done so, click the "transact" button to execute the function and see the result of your interaction.

## Authors

Eymard Julian S. Jimeno | 202110545@fit.edu.ph 

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
