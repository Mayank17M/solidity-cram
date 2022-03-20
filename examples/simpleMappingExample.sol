// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract mappingExample {
    mapping(uint => bool) public myMap;
    mapping(address => bool) public addressMap;

    function setValue(uint _index) public {
        myMap[_index] = true;
    }

    function setAddress() public {
        addressMap[msg.sender] = true;
    }
}
