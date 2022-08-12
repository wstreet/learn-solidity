// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

// Array can have a compile-time fixed size or a dynamic size.

contract Array {
  // 初始化数组方式
  uint[] public arr1;
  uint[] public arr2 = [1, 2, 3];
  // Fixed sized array, all elements initialize to 0
  uint[10] public arr3;

  function get (uint _i) public view returns (uint) {
    return arr1[_i];
  }

  // Solidity 可以返回整个数组。 但是这个函数应该避免长度可以无限增长的数组。

  function getArr1() public view returns (uint[] memory) {
    return arr1;
  }

  function push(uint _i) public  {
    arr1.push(_i);
  }
  function pop() public {
    arr1.pop();
  }
  function getLength() public view returns (uint){
    return arr1.length;
  }

  function remove(uint index) public {
     // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr1[index];
  }

  function examples() external {
     // create array in memory, only fixed size can be created
     uint[] memory arr = new uint[](5);
  }
}