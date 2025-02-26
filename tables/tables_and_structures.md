## Need to create database tables in SE11 to store customer details, bank account information, transaction history, and ATM cash details.

# Customer Master Table (`ZBANK_CUSTOMER_TA`)

| Field Name   | Data Element | Type   | Description               |
|-------------|-------------|--------|---------------------------|
| `CUSTOMER_ID` | GUID      | Key    | Unique Customer Identifier |
| `FIRST_NAME`  | CHAR15      |        | First Name                |
| `LAST_NAME`   | CHAR15      |        | Last Name                 |
| `DOB`         | DATS        |        | Date of Birth             |
| `ADDRESS`     | CHAR100     |        | Customer Address          |
| `PHONE`       | CHAR30      |        | Contact Number            |

---

# Bank Account Table (`ZBANK_ACCOUNT_TA`)

| Field Name    | Data Element | Type    | Description                  |
|--------------|-------------|---------|------------------------------|
| `CUSTOMER_ID'  | GUID     | Key     | Unique Account Identifier    |
| `ACCOUNT_ID` | CHAR12      |  | Customer owning the account |
| `BALANCE`     |    |         | Account Balance              |

---

# Bank Card Table (`ZBANK_CARD_TA`)

| Field Name   | Data Element | Type    | Description                |
|-------------|-------------|---------|----------------------------|
| `CARD_ID`   | CHAR16     | Key     | Unique Card Number        |
| `ACCOUNT_ID` | CHAR12      | Foreign Key | Linked Bank Account  |
| `PIN`       | CHAR4       |         | Encrypted PIN              |
| `CARD STATUS`    | CHAR1       |         | A (Active) / B (Blocked)   |
| `BALANCE`   | CHAR16     |      |        |
---

# Transaction History Table (`ZBANK_TRANSACTIO`)

| Field Name        | Data Element | Type    | Description                      |
|------------------|-------------|---------|----------------------------------|
| `TRANSACTION_ID` | GUID     | Key     | Unique Transaction ID           |
| `ACCOUNT_ID`    | CHAR12      |  | Associated Account       |
| `CARD_ID`       | CHAR16      |  | Associated Card          |
| `TRANSACTION_TYPE` | CHAR10    |         | Deposit/Withdraw/Inquiry       |
| `AMOUNT`        | CURR13,2    |         | Amount Transacted               |
| `TRANSACTION_DATE` | DATS      |         | Date of Transaction            |
| `STATUS`        | CHAR1       |         | S (Successful) / F (Failed)    |

---

# ATM Cash Availability Table (`ZBANK_ATM_CASH_T`)

| Field Name     | Data Element | Type  | Description                 |
|---------------|-------------|------|-----------------------------|
|`P_KEY`      | GUID       |   | Unique ATM Identifier      
| `ATM_NR`      |        |   | Unique ATM Identifier       |
| `DENOMINATION` | INT4      |   | Banknote (5, 10, 20, 50, 100) |
| `QUANTITY`    | INT4       |      | Number of Banknotes Available |




Employee (`ZBANK_Employee`)

| Field Name   | Data Element | Type    | Description                |
|-------------|-------------|---------|----------------------------|
| `EMP_ID`   | GUID     | Key     |         |
| `EMP_PIN` | CHAR4      |  |   |
| `EMP_FIRST_NAME`       | CHAR30       |         |               |
| `EMP_LAST_NAME`    | CHAR30       |         |   |
| `EMP_DOB`   | dats     |      |        |
| `EMP_ADDRESS`       | CHAR100       |         |               |
| `EMP_PHONE`    | CHAR15       |         |    |
