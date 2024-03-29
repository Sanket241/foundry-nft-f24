// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import {Test} from "forge-std/Test.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test{
    DeployBasicNft public deployer;
    BasicNft public basicNft;

    function setUp() public{
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }
    function testNameIsCorrect() public view{
        string memory expectedName = "Lord";
        string memory actualName = basicNft.name();
        assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)));
}
}