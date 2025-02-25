# 2️⃣ Class Modules

- ## ZCL_DEPOSIT_MONEY

**Purpose:** Deposits money into an account.
METHODS:

UPDATE_BALANCE
UPDATE_TRANSACTIONS

**Parameters:**

IV_ACCOUNT_ID (IMPORTING) – Account ID.

IV_AMOUNT (IMPORTING) – Amount to be deposited.

EV_NEW_BALANCE (EXPORTING) – Updated balance after deposit.

**TYPES:**

TY_ACCOUNT
TY_TRANSACTION
TY_TRANSACTION_T
TY_AMOUNT

- ## ZCL_WITHDRAW

**Purpose:** Withdraws money from an ATM.
METHODS


**Parameters:**

IV_CARD_ID (Input) – Card ID used for withdrawal.

IV_PIN (Input) – PIN for authentication.

IV_AMOUNT (Input) – Amount to be withdrawn.

EV_NEW_BALANCE (Output) – Updated account balance.

**TYPES:**



- ## ZCL_DISPLAY

**Purpose:** Displays the current account balance.
METHODS:
CHECK_BALANCE
CHECK_ATM_BALANCE


**Parameters:**

IV_ACCOUNT_ID (IMPORTING) – Account ID.

EV_BALANCE (EXPORTING) – Current balance.

**TYPES:**

THERE IS NO TYPES.

- ## ZCL_VALIDATION

**Purpose:** Validates a card and PIN authentication.
METHODS:
CHECK_STATUS

**Parameters:**

IC_DETAILS (IMPORTING).
EC_DETAILS(EXPORTING).

**TYPES:**

TY_CARD_DETAILS
TY_CARDTY_CARD_D


