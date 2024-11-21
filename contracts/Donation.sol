// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract DonationTracker is Ownable {

    constructor() Ownable(msg.sender) {}

    // STATE VARIABLES
    uint totalDonations;
    mapping (address => uint) public donationsMap;

    // EVENTS
    event DonationReceived(address indexed donar, uint amount);
    event FundsWithdrawn(address indexed owner, uint amount);

    // FUNCTIONS
    function donate() external payable {
        require(msg.value > 0, "Donation should be more than 0");

        donationsMap[msg.sender] += msg.value;
        totalDonations += msg.value;

        emit DonationReceived(msg.sender, msg.value);
    }

    function withdraw() external onlyOwner  {
        uint balance = totalDonations;
        require(balance > 0, "No funds to withdraw");

        payable(owner()).transfer(balance);

        emit FundsWithdrawn(owner(), balance);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
