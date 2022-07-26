// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

// Constants are variables that cannot be modified.
// Their value is hard coded and using constants can save gas cost.
// 不是所有类型的状态变量都支持用 constant 来修饰，当前支持的仅有值类型和字符串。

contract Constants {
  // 大写常量变量的编码约定
  address public constant MY_ADDRESS = 0x27Ce0369ab698533eFB4a9a1a3a8E80a6De04AD4;
  uint public constant MY_INT = 1;
}