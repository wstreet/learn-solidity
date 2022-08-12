// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

// An error will undo all changes made to the state during a transaction.

// You can throw an error by calling require, revert or assert.

// require is used to validate inputs and conditions before execution.
// revert is similar to require. See the code below for details.
// assert is used to check for code that should never be false. Failing assertion probably means that there is a bug.
contract Error {
  function testRequire(uint _i) public pure {
     // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10, "Inputs must be greater than 10");
  }

  function testRevert(uint _i) public pure {
    if (_i <= 10) {
      revert("Inputs must be greater than 10");
    }
  }

  uint public num;

  function testAssert() public view {
    // Assert should only be used to test for internal errors,  and to check invariants.
    // Here we assert that num is always equal to 0
    // since it is impossible to update the value of num
    assert(num == 0);
  }

  // custom error
  error InsufficientBalance(uint balance, uint withDrawAmount);

  function testCustomError (uint _withDrawMount) public view {
    uint bal = address(this).balance;

    if (bal < _withDrawMount) {
      // revert InsufficientBalance(bal, _withDrawMount);
      revert InsufficientBalance({balance: bal, withDrawAmount:_withDrawMount});
    }
  }


}