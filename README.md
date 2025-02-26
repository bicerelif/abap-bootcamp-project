# SAP ABAP ATM Banking System

## 📌 Project Overview
This project implements an **ATM Banking System** using **SAP ABAP**, allowing customers to:
- Manage bank accounts with deposits and withdrawals.
- Use multiple bank cards linked to a single account.
- Perform transactions via ATMs using predefined banknotes (5, 10, 20, 50, 100).
- Track transaction history.
- Monitor ATM cash availability.

## 📂 Components
This project consists of **custom tables**, **class**, and **reports**:

### 1️⃣ **Database Tables**
- **Customer Master Table (`ZBANK_CUSTOMER_TA`)** – Stores customer information.
- **Bank Account Table (`ZBANK_ACCOUNT_TA`)** – Stores account details and balance.
- **Bank Card Table (`ZBANK_CARD_TA`)** – Links bank accounts to cards.
- **Transaction History Table (`ZBANK_TRANSACTIO`)** – Logs customer transactions.
- **ATM Cash Availability Table (`ZBANK_ATM_CASH_TA`)** – Tracks ATM banknote availability.
- **ATM Employee Table (`ZBANK_ATM_EMPLOYEE`)** 
### 2️⃣ **Classes**
- `ZCL_DEPOSIT` – Deposits money into an account.
- `ZCL_WITHDRAW` – Withdraws money from an ATM.
- `ZCL_DISPLAY` – Displays account balance.
- `ZBANK_VALIDATE` – Validates card and PIN authentication.


### 3️⃣ **Reports & Screens**
- **Z_ALV_REPO.** – Displays transaction history.
- **Z_ALV_REPO2.** – Shows cash availability in ATMs.


## 🛠️ Technologies Used
- **SAP ABAP** – Core programming language.
- **SAP SE11** – Data Dictionary (Tables, Domains, Data Elements).
- **SAP SE37** – Function Builder (Function Modules).
- **SAP SE38** – ABAP Editor (Reports & Programs).
- **SAP ALV** – List Viewer for reports.

