# SAP ABAP ATM Banking System

## 📌 Project Overview
This project implements an **ATM Banking System** using **SAP ABAP**, allowing customers to:
- Manage bank accounts with deposits and withdrawals.
- Use multiple bank cards linked to a single account.
- Perform transactions via ATMs using predefined banknotes (5, 10, 20, 50, 100).
- Track transaction history.
- Monitor ATM cash availability.

## 📂 Components
This project consists of **custom tables**, **function modules**, and **reports**:

### 1️⃣ **Database Tables**
- **Customer Master Table (`ZBANK_CUSTOMER`)** – Stores customer information.
- **Bank Account Table (`ZBANK_ACCOUNT`)** – Stores account details and balance.
- **Bank Card Table (`ZBANK_CARD`)** – Links bank accounts to cards.
- **Transaction History Table (`ZBANK_TRANSACTIONS`)** – Logs customer transactions.
- **ATM Cash Availability Table (`ZBANK_ATM_CASH`)** – Tracks ATM banknote availability.

### 2️⃣ **Function Modules**
- `ZBANK_DEPOSIT_MONEY` – Deposits money into an account.
- `ZBANK_WITHDRAW_MONEY` – Withdraws money from an ATM.
- `ZBANK_DISPLAY_BALANCE` – Displays account balance.
- `ZBANK_VALIDATE_CARD` – Validates card and PIN authentication.
- `ZBANK_UPDATE_ATM_CASH` – Updates ATM cash levels after withdrawal.

### 3️⃣ **Reports & Screens**
- **Customer Management Report** – View/Edit customer details.
- **ATM Transaction Report** – Displays transaction history.
- **ATM Cash Status Report** – Shows cash availability in ATMs.


## 🛠️ Technologies Used
- **SAP ABAP** – Core programming language.
- **SAP SE11** – Data Dictionary (Tables, Domains, Data Elements).
- **SAP SE37** – Function Builder (Function Modules).
- **SAP SE38** – ABAP Editor (Reports & Programs).
- **SAP ALV** – List Viewer for reports.

