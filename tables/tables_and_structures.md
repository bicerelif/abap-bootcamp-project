## Need to create database tables in SE11 to store customer details, bank account information, transaction history, and ATM cash details.

# Customer Master Table (`ZBANK_CUSTOMER`)

| Field Name   | Data Element | Type   | Description               |
|-------------|-------------|--------|---------------------------|
| `CUSTOMER_ID` | CHAR10      | Key    | Unique Customer Identifier |
| `FIRST_NAME`  | CHAR30      |        | First Name                |
| `LAST_NAME`   | CHAR30      |        | Last Name                 |
| `DOB`         | DATS        |        | Date of Birth             |
| `ADDRESS`     | CHAR100     |        | Customer Address          |
| `PHONE`       | CHAR15      |        | Contact Number            |

---

# Bank Account Table (`ZBANK_ACCOUNT`)

| Field Name    | Data Element | Type    | Description                  |
|--------------|-------------|---------|------------------------------|
| `ACCOUNT_ID`  | CHAR12      | Key     | Unique Account Identifier    |
| `CUSTOMER_ID` | CHAR10      | Foreign Key | Customer owning the account |
| `BALANCE`     | CURR13,2    |         | Account Balance              |

---

# Bank Card Table (`ZBANK_CARD`)

| Field Name   | Data Element | Type    | Description                |
|-------------|-------------|---------|----------------------------|
| `CARD_ID`   | CHAR16      | Key     | Unique Card Number        |
| `ACCOUNT_ID` | CHAR12      | Foreign Key | Linked Bank Account  |
| `PIN`       | CHAR4       |         | Encrypted PIN              |
| `STATUS`    | CHAR1       |         | A (Active) / B (Blocked)   |

---

# Transaction History Table (`ZBANK_TRANSACTIONS`)

| Field Name        | Data Element | Type    | Description                      |
|------------------|-------------|---------|----------------------------------|
| `TRANSACTION_ID` | CHAR12      | Key     | Unique Transaction ID           |
| `ACCOUNT_ID`    | CHAR12      | Foreign Key | Associated Account       |
| `CARD_ID`       | CHAR16      | Foreign Key | Associated Card          |
| `TRANSACTION_TYPE` | CHAR10    |         | Deposit/Withdraw/Inquiry       |
| `AMOUNT`        | CURR13,2    |         | Amount Transacted               |
| `TRANSACTION_DATE` | DATS      |         | Date of Transaction            |
| `STATUS`        | CHAR1       |         | S (Successful) / F (Failed)    |

---

# ATM Cash Availability Table (`ZBANK_ATM_CASH`)

| Field Name     | Data Element | Type  | Description                 |
|---------------|-------------|------|-----------------------------|
| `ATM_ID`      | CHAR8       | Key  | Unique ATM Identifier       |
| `DENOMINATION` | NUMC3      | Key  | Banknote (5, 10, 20, 50, 100) |
| `QUANTITY`    | INT4       |      | Number of Banknotes Available |
