// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
// There are several ways to return outputs from a function.

// Public functions cannot accept certain data types as inputs or outputs

contract Function {
  // Functions can return multiple values.
  function returnMany() public pure returns (uint, bool, uint) {
    return (1, true, 1);
  }

  // Return values can be named.
  function named() public pure returns (uint x, bool b, uint z) {
    return (1, true, 1);
  }

  // Return values can be assigned to their name. 
  // In this case the return statement can be omitted.

  function assigned() public pure returns (uint x, bool b, uint z) {
    x = 1;
    b = true;
    z = 1;
  }


    // Use destructuring assignment when calling another
    // function that returns multiple values.
    function destructuringAssignments() public pure returns (uint, bool, uint, uint, uint){
      (uint x, bool b, uint z) = returnMany();
       // Values can be left out.
      (uint i, , uint j) = (4, 5, 6);
      return (x, b, z, i, j);
    }

    // Cannot use map for either input or output

    // Can use array for input
    function arrayInput(uint[] memory _arr) public {  }

    // Can use array for output
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
      return arr;
    }
}