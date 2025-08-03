// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Factory} from "../src/Factory.sol";
import {Counter} from "../src/Counter.sol";

contract FactoryScript is Script {
    Factory public factory;
    Counter public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        factory = new Factory();
        counter = factory.deployCounter();

        vm.stopBroadcast();
    }
}
