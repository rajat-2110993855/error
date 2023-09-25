// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExceptionExample {
    uint256 public dataValue;

    // Function to update dataValue, ensuring it only increases
    function updateData(uint256 newValue) public {
        // Trigger a revert if the new value is not greater than the current value
        if (newValue <= dataValue) {
            revert("New value must be greater than the current value.");
        }

        dataValue = newValue;
    }

    // Function to calculate the square of a number if it's not negative
    function calculateSquare(uint256 number) public pure returns (uint256) {
        // Trigger an assert failure if the number is negative
        if (number < 0) {
            assert(false);
        }

        return number * number;
    }

    // Function to trigger a custom revert error message
    function triggerCustomRevert(bool shouldRevert) public pure {
        if (shouldRevert) {
            // Trigger a custom revert with a message
            revert("Custom revert: This transaction was intentionally reverted.");
        }
    }
}
