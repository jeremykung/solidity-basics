// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {

    // Room Status
    enum Statuses { 
        Vacant, 
        Occupied 
    }

    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    // Modifiers are like middleware

    // Check Price
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    // Check status
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        // the _ is like next() where it executes / inserts the original function code
        _;
    }

    // Actual function for booking hotel
    function book() public payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;

        // owner.transfer(msg.value);
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }

}