// SPDX-License-Identifier: MIT
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
