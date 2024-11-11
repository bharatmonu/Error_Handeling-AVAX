# Error Handling AVAX
# **BOOKMYSHOW Event Ticket Booking Smart Contract**

This is a smart contract for a **BOOKMYSHOW event ticket booking system**. It allows users to book and cancel multiple tickets. The contract uses Solidity's error-handling mechanisms (`require()`, `assert()`, and `revert()`) to ensure proper validation.

## **Features**
- Users can book multiple free tickets for an event.
- Users can cancel their booked tickets at any time.
- Utilizes error-handling mechanisms:
  - `require()`: Validates user input and ticket availability.
  - `revert()`: Handles conditions when the requested ticket quantity exceeds availability.
  - `assert()`: Ensures internal state consistency.

## **Functions**

### **1. `bookTickets(uint256 quantity)`**
Books a specified number of tickets.

- **Input**: 
  - `quantity` (uint256): Number of tickets to book.
- **Validations**:
  - Must book at least one ticket (`require()`).
  - Requested tickets should not exceed the remaining available tickets (`revert()`).


### **2. `cancelTickets(uint256 quantity)`**
Cancels a specified number of previously booked tickets.

- **Input**:
  - `quantity` (uint256): Number of tickets to cancel.
- **Validations**:
  - Must cancel at least one ticket (`require()`).
  - User must have enough tickets to cancel (`require()`).


### **3. `getRemainingTickets() → uint256`**
Returns the number of remaining tickets available for booking.


## Help

If you encounter any issues or have questions related to the "Voting System Smart Contract", feel free to reach out for assistance.

## Authors
- Bharat Kumar
## License

This project is licensed under the MIT License.
