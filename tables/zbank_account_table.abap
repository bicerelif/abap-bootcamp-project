REPORT Z_ATM_TEST.
data : ls_table Type zbank_account_ta,
      lt_table TYPE Table Of zbank_account_ta.

ls_table-account_id = '000000000001'.
ls_table-customer_id = '3F63F81E34C21EEFBCD5E54AE668AB37'.
ls_table-balance = '840'.

APPEND ls_table TO lt_table.
*


MODIFY zbank_account_ta FROM TABLE lt_table.
*
*DATA: lv_amount  TYPE i,
*      lt_bills  TYPE TABLE OF i,
*      lv_bill   TYPE i,
*      lv_count  TYPE i,
*      lv_remain TYPE i,
*      ls_account TYPE zbank_account_ta.
*
*PARAMETERS: p_amount TYPE i.
*
*lv_amount = p_amount.
*
*SELECT SINGLE * FROM zbank_account_ta INTO ls_account
*WHERE account_id = '000000000001'.
*
*IF sy-subrc <> 0.
*  WRITE: / 'Account not found!'.
*  EXIT.
*ENDIF.
*
*IF ls_account-balance < lv_amount.
*  WRITE: / 'Insufficient balance!'.
*  EXIT.
*ENDIF.
*
*lt_bills = VALUE #( ( 100 ) ( 50 ) ( 20 ) ( 10 ) ( 5 ) ).
*lv_remain = lv_amount.
*
*LOOP AT lt_bills INTO lv_bill.
*  CLEAR lv_count.
*  lv_count = lv_remain DIV lv_bill.
*  lv_remain = lv_remain MOD lv_bill.
*ENDLOOP.
*
*IF lv_remain <> 0.
*  WRITE: / 'Error: Amount cannot be withdrawn with available denominations.'.
*  EXIT.
*ENDIF.
*
*WRITE: / 'Withdrawal Amount:', lv_amount.
*WRITE: / 'Initial Balance:', ls_account-balance.
*WRITE: / 'Dispensing Bills:'.
*
*lv_remain = lv_amount.
*
*LOOP AT lt_bills INTO lv_bill.
*  CLEAR lv_count.
*  lv_count = lv_remain DIV lv_bill.
*  lv_remain = lv_remain MOD lv_bill.
*
*  IF lv_count > 0.
*    WRITE: / lv_count, 'x', lv_bill, 'bill(s)'.
*  ENDIF.
*ENDLOOP.
*
*ls_account-balance = ls_account-balance - lv_amount.
*
*UPDATE zbank_account_ta SET balance = ls_account-balance
*WHERE account_id = '000000000001'.
*
*COMMIT WORK.
*
*WRITE: / 'New Balance:', ls_account-balance.
*WRITE: / 'Withdrawal Successful!'.
