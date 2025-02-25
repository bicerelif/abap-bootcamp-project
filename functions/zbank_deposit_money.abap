CLASS ZCL_DEPOSIT_MONEY DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
PUBLIC SECTION.

  TYPES:
    BEGIN OF ty_account,
      id       TYPE zbank_account_ta-customer_id,
      balance  TYPE zbank_account_ta-balance,
    END OF ty_account.

  TYPES:
    BEGIN OF ty_transaction,
      account_id    TYPE zbank_account_ta-customer_id,
      transaction_id TYPE zbank_transactio-account_id,
      amount        TYPE p LENGTH 12 DECIMALS 2,
      transaction_date TYPE dats,
    END OF ty_transaction.

  TYPES:
    ty_transaction_t TYPE TABLE OF ty_transaction.

  TYPES:
    ty_amount TYPE p LENGTH 16 DECIMALS 2.

  CLASS-METHODS:
    UPDATE_BALANCE
      IMPORTING
        IV_ACCOUNT_ID  TYPE ty_account-id
        IV_AMOUNT      TYPE ty_amount
      EXPORTING
        EV_NEW_BALANCE TYPE zbank_account_ta-balance,
    UPDATE_TRANSACTIONS
      IMPORTING
        IV_ACCOUNT_ID  TYPE ty_account-id
        IV_AMOUNT      TYPE ty_amount
        EV_NEW_BALANCE TYPE zbank_account_ta-balance.
