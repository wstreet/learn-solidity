
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;


// boolean
// uint
// int
// address


contract Primitives {
  bool public boo = true;

  /*
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
  */ 
  int8 public i8  = 1;
  int public i256 = 456;
  int public i = -123; // int is same as int256

  // minimum and maximum of int
  int public minInt = type(int).min;
  int public maxInt = type(int).max;

  address public addr = 0x27Ce0369ab698533eFB4a9a1a3a8E80a6De04AD4;

   /********************************
   In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :
      - fixed-sized byte arrays 固定大小的字节数组
      - dynamically-sized byte arrays.  动态调整字节数组大小。
      bytes代表动态的，是byte[]缩写
 */
  bytes1 a = 0xb5;
  bytes1 b = 0x56;

  // Default values
  // Unassigned variables have a default value
  bool public defaultBool; // false
  uint public defaultUint; // 0
  int public defaultInt; // 0
  address public defaultAddress; // 0x0000000000000000000000000000000000000000


}