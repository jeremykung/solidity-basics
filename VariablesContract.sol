// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariablesContract {
    // Numbers
    uint public myUint = 1;
    uint256 public myUint256 = 1;

    // String
    string public myString = "Hello";
    bytes32 public myBytes32 = "Hi";

    // Addresses
    // address public myAddress = // eth address

    // Structs (Like Classes)
    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public instanceOfMyStruct = MyStruct(1, "hi");

    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}