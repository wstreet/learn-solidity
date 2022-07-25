// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Variables {
  // There are three types of variables in solidity
  // 1. local: declared inside a function, not stored on the blockain
  // 2. state: declared outside a function, stored on the blockain
  // 3. global: provide information about the blockain


  // State Variables are stored on the blockain
  string public text = "hello";
  uint public num = 8;


  function doSomething() public {
    // Local variables are not stored on the blockain
    uint i = 456;

    // Global variables 
    uint timestamp = block.timestamp;
    address sender = msg.sender; // address of the caller
  }
}