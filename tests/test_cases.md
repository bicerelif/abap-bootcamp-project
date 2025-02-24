 **Possible Test Cases for Functions and Reports** 

---

### 1. ZBANK_CREATE_CUSTOMER
| Test Scenario | Status |
|-------------|-------------|
| Create a new customer |
| Create a customer with missing required fields |

---

### 2. ZBANK_CREATE_ACCOUNT
| Test Scenario | Status |
|-------------|-------------|
| Open a new account for an existing customer |
| Try to create an account for a non-existing customer |

---

### 3. ZBANK_CREATE_CARD
| Test Scenario | Status |
|-------------|-------------|
| Issue a new card to an existing account |
| Issue a card for an invalid account |

---

### 4. ZBANK_DEPOSIT_FUNDS
| Test Scenario | Status |
|-------------|-------------|
| Deposit valid amount |
| Deposit negative amount |

---

### 5. ZBANK_WITHDRAW_FUNDS
| Test Scenario | Status |
|-------------|-------------|
| Withdraw valid amount |
| Withdraw more than balance |
| Withdraw an amount that cannot be dispensed by ATM (e.g., 3 EUR) |

---

### 6. ZBANK_DISPLAY_BALANCE
| Test Scenario | Status |
|-------------|-------------|
| Check balance for a valid account |
| Check balance for a non-existing account |

---

### 7. ZBANK_TRANSACTION_REPORT
| Test Scenario | Status |
|-------------|-------------|
| View transaction history for an account |
| View transactions for an account with no transactions |
---

## 8. ALV Report Tests
| Test Scenario | Status |
|-------------|-------------|
| Generate customer account balance report |
| Generate transaction report for an account |


