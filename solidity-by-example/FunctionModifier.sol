// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;


// Modifiers are code that can be run before and / or after a function call.

// Modifiers can be used to:

// Restrict access
// Validate inputs
// Guard against reentrancy hack
contract FunctionModifier {
  // We will use these variables to demonstrate how to use  modifiers.
  address public owner;
  uint public x = 10;
  bool public locked;

  constructor () {
    // Set the transaction sender as the owner of the contract.
    owner = msg.sender;
  }

   // Modifier to check that the caller is the owner of  the contract.
  modifier onlyOwner() {
    require(msg.sender == owner, "Not owner");
    // Underscore is a special character only used inside
    // a function modifier and it tells Solidity to
    // execute the rest of the code.
    _;
  }

  // Modifiers can take inputs. This modifier checks that the
    // address passed in is not the zero address.
  modifier validAddress(address _addr) {
    require(_addr != address(0), "Not valid address");
    _;
  }

  function changeOwner(address _owner) public onlyOwner validAddress(_owner) {
    owner = _owner;
  }

    // Modifiers can be called before and / or after a function.
    // This modifier prevents a function from being called while
    // it is still executing.
  modifier noReentrancy() {
    require(!locked, "No reentrancy");
    locked = true;
    _;
    locked = false;
  }

  function decrement(uint _i) public noReentrancy {
    x -= 1;
    if (_i > 10) {
      decrement(_i - 1);
    }
  }
}