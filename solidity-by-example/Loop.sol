// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract Loop {
  // solidity support for while and do while
  function loop() public {
    for (uint index = 0; index < 10; index++) {
      if (index == 3) {
        continue;
      } 
      
      if (index == 5) {
        break;
      }

    }

    uint j;
    while (j < 10) {
      j++;
    }

  }
}