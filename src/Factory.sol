// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Counter} from "./Counter.sol";

contract Factory {
    function deployCounter() public returns (Counter) {
        return new Counter();
    }
}