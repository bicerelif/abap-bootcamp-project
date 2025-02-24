 **SAP GUI & SE80 (ABAP Workbench)** to run the function modules and ALV reports.

---

### 🔹 1. ZBANK_CREATE_CUSTOMER
| Test Case ID | Test Scenario | Input | Expected Output | Actual Output | Status |
|-------------|--------------|------|----------------|---------------|--------|
| TC_01 | Create a new customer | Name: "Elif Bicer", DOB: "1997-03-09", Address: "Riga, Latvia" | Customer is successfully created in `ZBANK_CUSTOMER` table | ✅ Customer record created | ✅ Pass |
| TC_02 | Create a customer with missing required fields | Name: "Elif Bicer", DOB: NULL | Error message: "Date of Birth is required" | ✅ Error displayed | ✅ Pass |

---

### 🔹 2. ZBANK_CREATE_ACCOUNT
| Test Case ID | Test Scenario | Input | Expected Output | Actual Output | Status |
|-------------|--------------|------|----------------|---------------|--------|
| TC_03 | Open a new account for an existing customer | Customer ID: 1001, Initial Deposit: 500 EUR | Account is created in `ZBANK_ACCOUNT` with balance 500 EUR | ✅ Account created | ✅ Pass |
| TC_04 | Try to create an account for a non-existing customer | Customer ID: 9999, Initial Deposit: 200 EUR | Error message: "Customer does not exist" | ✅ Error displayed | ✅ Pass |

---

### 🔹 3. ZBANK_CREATE_CARD
| Test Case ID | Test Scenario | Input | Expected Output | Actual Output | Status |
|-------------|--------------|------|----------------|---------------|--------|
| TC_05 | Issue a new card to an existing account | Account ID: 2001 | Card is successfully created in `ZBANK_CARD` | ✅ Card created | ✅ Pass |
| TC_06 | Issue a card for an invalid account | Account ID: 9999 | Error message: "Account does not exist" | ✅ Error displayed | ✅ Pass |

---

### 🔹 4. ZBANK_DEPOSIT_FUNDS
| Test Case ID | Test Scenario | Input | Expected Output | Actual Output | Status |
|-------------|--------------|------|----------------|---------------|--------|
| TC_07 | Deposit valid amount | Account ID: 2001, Amount: 100 EUR | Balance in `ZBANK_ACCOUNT` is updated correctly | ✅ Balance updated | ✅ Pass |
| TC_08 | Deposit negative amount | Account ID: 2001, Amount: -50 EUR | Error message: "Invalid deposit amount" | ✅ Error displayed | ✅ Pass |

---

### 🔹 5. ZBANK_WITHDRAW_FUNDS
| Test Case ID | Test Scenario | Input | Expected Output | Actual Output | Status |
|-------------|--------------|------|----------------|---------------|--------|
| TC_09 | Withdraw valid amount | Account ID: 2001, Amount: 50 EUR | Balance is reduced correctly, transaction recorded | ✅ Balance updated | ✅ Pass |
| TC_10 | Withdraw more than balance | Account ID: 2001, Amount: 1000 EUR | Error message: "Insufficient balance" | ✅ Error displayed | ✅ Pass |
| TC_11 | Withdraw an amount that cannot be dispensed by ATM (e.g., 3 EUR) | Account ID: 2001, Amount: 3 EUR | Error message: "ATM can only dispense 5, 10, 20, 50, 100 EUR notes" | ✅ Error displayed | ✅ Pass |

---

### 🔹 6. ZBANK_DISPLAY_BALANCE
| Test Case ID | Test Scenario | Input | Expected Output | Actual Output | Status |
|-------------|--------------|------|----------------|---------------|--------|
| TC_12 | Check balance for a valid account | Account ID: 2001 | Displays correct balance | ✅ Balance displayed | ✅ Pass |
| TC_13 | Check balance for a non-existing account | Account ID: 9999 | Error message: "Account not found" | ✅ Error displayed | ✅ Pass |

---

### 🔹 7. ZBANK_TRANSACTION_REPORT
| Test Case ID | Test Scenario | Input | Expected Output | Actual Output | Status |
|-------------|--------------|------|----------------|---------------|--------|
| TC_14 | View transaction history for an account | Account ID: 2001 | Displays list of transactions | ✅ Transactions displayed | ✅ Pass |
| TC_15 | View transactions for an account with no transactions | Account ID: 3001 | Message: "No transactions found" | ✅ Message displayed | ✅ Pass |

---

## ✅ Executing ALV Report Tests
| Test Case ID | Test Scenario | Input | Expected Output | Actual Output | Status |
|-------------|--------------|------|----------------|---------------|--------|
| TC_16 | Generate customer account balance report | Customer ID: 1001 | ALV report displays accounts and balances correctly | ✅ Report displayed | ✅ Pass |
| TC_17 | Generate transaction report for an account | Account ID: 2001 | ALV report lists all transactions | ✅ Report displayed | ✅ Pass |


