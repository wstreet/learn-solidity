// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

// Transactions are paid with ether.
contract Units {
  uint public onewei = 1 wei;

  bool public isOnewei = onewei == 1;

  uint public oneEther = 1 ether;
  // 1 ether is equal to 10^18 wei
  bool public isOneEther = oneEther == 1e18 wei;
}