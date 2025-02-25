REPORT ZBANK_TRANSACTIONS_TABLE_POP.


DATA: lt_transactions TYPE TABLE OF zbank_transactio,
      ls_transaction TYPE zbank_transactio.

DO 5 TIMES.
  CLEAR ls_transaction.

  ls_transaction-transaction_id = cl_reca_guid=>get_new_guid( ).
  ls_transaction-account_id = |ACC{ sy-index }123|.
  ls_transaction-card_id = |CARD{ sy-index }5678|.
  ls_transaction-transaction_type = 'DEBIT'.
  ls_transaction-amount = '100'.
  ls_transaction-transaction_date = sy-datum.
  ls_transaction-status = '1'.

  APPEND ls_transaction TO lt_transactions.
ENDDO.
