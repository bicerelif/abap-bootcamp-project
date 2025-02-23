# 2️⃣ Function Modules

- ## ZBANK_DEPOSIT_MONEY

**Purpose: Deposits money into an account.

**Parameters:

IV_ACCOUNT_ID (Input) – Account ID.

IV_AMOUNT (Input) – Amount to be deposited.

EV_NEW_BALANCE (Output) – Updated balance after deposit.

**Logic:

Validate account existence.

Add amount to the existing balance.

Update the account table (ZBANK_ACCOUNT).

Log the transaction in ZBANK_TRANSACTIONS.

- ## ZBANK_WITHDRAW_MONEY

**Purpose: Withdraws money from an ATM.

**Parameters:

IV_CARD_ID (Input) – Card ID used for withdrawal.

IV_PIN (Input) – PIN for authentication.

IV_AMOUNT (Input) – Amount to be withdrawn.

EV_NEW_BALANCE (Output) – Updated account balance.

**Logic:

Validate card, PIN, and account balance.

Check ATM cash availability.

Deduct amount from account balance.

Update ZBANK_ACCOUNT and ZBANK_ATM_CASH.

Log the transaction in ZBANK_TRANSACTIONS.

- ## ZBANK_DISPLAY_BALANCE

**Purpose: Displays the current account balance.

**Parameters:

IV_ACCOUNT_ID (Input) – Account ID.

EV_BALANCE (Output) – Current balance.

**Logic:

Fetch and return balance from ZBANK_ACCOUNT.

- ## ZBANK_VALIDATE_CARD

**Purpose: Validates a card and PIN authentication.

**Parameters:

IV_CARD_ID (Input) – Card ID.

IV_PIN (Input) – PIN.

EV_VALID (Output) – Success flag.

**Logic:

Check if the card exists in ZBANK_CARD.

Validate PIN against stored PIN.

Return validation status.

- ## ZBANK_UPDATE_ATM_CASH

**Purpose: Updates ATM cash levels after withdrawal.

**Parameters:

IV_ATM_ID (Input) – ATM Identifier.

IT_CASH_DENOMINATIONS (Input) – Table of cash denominations withdrawn.

**Logic:

Deduct withdrawn amounts from ZBANK_ATM_CASH.

Update cash levels in the database.
