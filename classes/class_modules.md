# 2️⃣ Class Modules

- ## ZCL_DEPOSIT_MONEY

**METHODS::**
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

**METHODS::** .



**Parameters:**

IV_CARD_ID (Input) – Card ID used for withdrawal.

IV_PIN (Input) – PIN for authentication.

IV_AMOUNT (Input) – Amount to be withdrawn.

EV_NEW_BALANCE (Output) – Updated account balance.

**TYPES:**



- ## ZCL_DISPLAY

**METHODS::** 

CHECK_BALANCE
CHECK_ATM_BALANCE


**Parameters:**

IV_ACCOUNT_ID (IMPORTING) – Account ID.

EV_BALANCE (EXPORTING) – Current balance.

**TYPES:**

THERE IS NO TYPES.

- ## ZCL_VALIDATION

**METHODS::**
CHECK_STATUS

**Parameters:**

IC_DETAILS (IMPORTING).
EC_DETAILS(EXPORTING).

**TYPES:**

TY_CARD_DETAILS
TY_CARDTY_CARD_D


