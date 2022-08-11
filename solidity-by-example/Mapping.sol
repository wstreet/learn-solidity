// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

// Maps are created with the syntax mapping(keyType => valueType).

// The keyType can be any built-in value type, bytes, string, or any contract.

// valueType can be any type including another mapping or an array.

// Mappings are not iterable.
contract Mapping {
  mapping(address => uint) public myApp;


  function get(address _addr) public view returns (uint) {
    // Mapping always returns a value.
        // If the value was never set, it will return the default value.
    return myApp[_addr];
  }

  function set(address _addr, uint value) public {
    myApp[_addr] = value;
  }

  function remove(address _addr) public {
    delete myApp[_addr];
  }
}

contract NestedMapping {
  mapping(address => mapping(uint => bool)) public nested;
  function get(address _addr, uint _i) public view returns (bool) {
    nested[_addr][_i];
  }

  function set(address _addr, uint _i, bool _b) public {
    nested[_addr][_i] = _b;
  }

  function remove(address _addr, uint _i) public {
    delete nested[_addr][_i];
  }
}