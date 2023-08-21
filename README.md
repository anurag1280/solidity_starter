# ErrorHandlingContract in Solidity


## Install

1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```


## Initialize

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.

2. The "ErrorHandlingContract" contract


   ```solidity
   /// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public value;

    /**
     * @dev Sets the value to a new provided value.
     * @param _newValue The new value to be set.
     *
     * Requirements:
     * - The `_newValue` parameter must be greater than 0.
     * - The `_newValue` must be different from the current `value`.
     */
    function setValue(uint256 _newValue) public {
        // Using require() to validate the condition
        require(_newValue > 0, "New value must be greater than 0");

        // Using assert() to check an internal invariant
        // This assertion ensures that the new value is not the same as the current value.
        // If the assertion fails, it indicates a bug in the code logic.
        assert(_newValue != value);

        // Update the value with the new input
        value = _newValue;
    }

    /**
     * @dev Throws an error unconditionally.
     * This function will always revert the transaction with the given error message.
     * This can be useful for creating predictable fail scenarios for testing.
     */
    function throwError() public pure {
        // Using revert() to intentionally revert the transaction
        // This is a way to handle specific scenarios where reverting is desired.
        revert("This transaction will always revert");
    }
}
   ```

3. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

4. Test your contract

   In the interactive Truffle console

   # Error Handling Smart Contract

This repository contains a simple Solidity smart contract that demonstrates the usage of `require()`, `assert()`, and `revert()` statements for error handling in Ethereum smart contracts.

## Contract Overview

The `ErrorHandlingContract` contract showcases the usage of different error handling mechanisms:

1. The `setValue(uint256 _newValue)` function uses the `require()` statement to validate conditions before updating the contract state. It also employs the `assert()` statement to check internal invariants to prevent logical errors.

2. The `throwError()` function demonstrates the use of the `revert()` statement to intentionally revert a transaction. This can be useful for controlled failure scenarios in testing or debugging.

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://https://github.com/anurag1280/solidity_starter.git

