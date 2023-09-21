# Transactions Smart Contract

This is a simple Solidity smart contract that allows users to deposit and withdraw ether, as well as transfer ether between accounts. It also demonstrates the usage of `require()`, `assert()`, and `revert()` statements for error handling and access control.

## Smart Contract Overview

- **Contract Name**: Transactions
- **Solidity Version**: ^0.8.0
- **License**: MIT

The `Transactions` contract is designed to manage user account balances for depositing, withdrawing, and transferring ether. It includes access control to ensure that only the contract owner can initiate certain functions.

## Functions

### `deposit()`

- **Access:** Only the contract owner
- **Description:** Allows the contract owner to deposit ether into the contract. The function checks if a positive value of ether is sent along with the transaction and updates the owner's balance accordingly.

### `withdraw(uint256 amount)`

- **Access:** Anyone
- **Description:** Allows any user to withdraw a specified amount of ether from their account. It uses `assert()` to check if the user's balance is sufficient for the withdrawal, and if not, the transaction will revert.

### `transfer(address to, uint256 amount)`

- **Access:** Anyone
- **Description:** Allows any user to transfer a specified amount of ether to another address. It checks if the sender's balance is sufficient for the transfer and reverts the transaction with an "Insufficient balance" error message if the condition is not met.

## Usage

1. clone the repository or download it as zip and unzip it from [github][https://github.com/Ifeanyi-Ani/transaction.git].
2. Go to [remix][https://remix.ethereum.org].
3. Make sure you are on the contract folder and click upload folder. Upload the cloned transaction folder in your local mechine to remix.
4. Open the transaction folder and open the transaction file in it
5. Deploy the contract.
6. The contract owner can deposit ether into the contract using the `deposit` function.
7. Any user can withdraw ether from their account using the `withdraw` function, provided they have a sufficient balance.
8. Any user can transfer ether to another address using the `transfer` function, as long as they have a sufficient balance.
