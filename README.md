# Donation Tracker

## Description

The **Donation Tracker** is a smart contract designed to facilitate ETH donations for a specific cause, such as a charity, an open-source project, or any other initiative. The contract supports essential features to ensure transparency, access control, and ease of use.

### Features

- **Track Total Donations**: Maintains a record of the total ETH donated to the cause.
- **Donor Records**: Keeps a mapping of all donors and their respective contribution amounts.
- **Owner Withdrawals**: Allows only the owner of the contract to withdraw donated funds.

### Key Concepts Demonstrated

- **Payable Functions**: Accept and process incoming ETH donations.
- **Mappings**: Efficiently store and retrieve donor information.
- **Access Control**: Enforce owner-only permissions for sensitive actions like fund withdrawal.
- **Events for Transparency**: Emit events for key activities, enabling easy tracking of donations and withdrawals.

---

## Getting Started

### Prerequisites

- **Ethereum Development Environment**: Ensure you have tools like [Remix](https://remix.ethereum.org/), [Hardhat](https://hardhat.org/), or [Truffle](https://trufflesuite.com/) installed.
- **ETH Wallet**: Use MetaMask or any compatible wallet for deploying and interacting with the contract.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/donation-tracker.git
