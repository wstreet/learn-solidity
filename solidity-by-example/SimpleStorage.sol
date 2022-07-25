// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

// To write or update a state variable you need to send a transaction.

// On the other hand, you can read state variables, for free, without any transaction fee.
contract SimpleStorage {

  uint public num;

  // write
  function set(uint _num) public {
    num = _num;
  }
  // read
  function get() public view returns (uint) {
    return num;
  }
}