// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;


contract Gas {
  uint public i = 0;

  function forever() public{
    while (true) {
      // 改变状态需要花费gas
      // 当gas消耗完时交易会失败
      // 已花费的gas不会反回
      i += 1;
    }
  }
}