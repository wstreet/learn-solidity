// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract AccountError {
  uint public balance;
  uint public constant MAX_UINT = 2**256 - 1;

  function deposit(uint _amount) public {
    uint oldBalance = balance;
    uint newBalance = balance + _amount;

     // balance + _amount does not overflow if balance + _amount >= balance
    require(newBalance >= oldBalance, "Overflow");

    balance = newBalance;
    assert(balance >= oldBalance);
    
  }

  function withDraw(uint _amount) public {
    uint oldBalance = balance;
    require(balance >= _amount, "Underflow");

    if (balance < _amount) {
      revert("Underflow");
    }

    balance -= _amount;
    // balance = balance - _amount;

    assert(balance <= oldBalance);
  }
}