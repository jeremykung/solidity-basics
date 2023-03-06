// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint[] public uintArray = [1,2,3,4];
    string[] public stringArray = ["apple", "banana", "orange"];
    string[] public customArray;

    uint256[][] public array2D = [
        [1, 2, 3],
        [4, 5, 6]
    ];

    function addValue(string memory _value) public {
        customArray.push(_value);
    }

    function customArrayCountLength() public view returns(uint) {
        return customArray.length;
    }
}