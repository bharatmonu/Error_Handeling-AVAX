// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BookMyShow {
    uint256 public totalTickets = 100;
    uint256 public ticketsSold;
    mapping(address => uint256) public userTickets;


    function bookTickets(uint256 quantity) public {
        require(quantity > 0, "You must book at least one 1");
        if (ticketsSold + quantity > totalTickets) {
            revert("Not Enough tickets available");
        }
        userTickets[msg.sender]+=quantity;
        ticketsSold+=quantity;
        assert(ticketsSold <= totalTickets);
    }

    function cancelTickets(uint256 quantity) public {
        require(quantity > 0, "Number should be atleast one");
        require(userTickets[msg.sender] >= quantity, "You do not have Enough Tickets");
        userTickets[msg.sender] -= quantity;
        ticketsSold -= quantity;
        assert(ticketsSold >= 0);
    }

    function getRemainingTickets() public view returns (uint256) {
        return totalTickets - ticketsSold;
    }
}
