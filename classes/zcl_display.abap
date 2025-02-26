 METHOD check_atm_balance.
    DATA: lt_cash            TYPE TABLE OF zbank_atm_cash_t,
          ls_cash            TYPE zbank_atm_cash_t,
          lv_total_cash      TYPE p DECIMALS 2,
          lv_needed          TYPE p DECIMALS 2,
          lv_notes_needed    TYPE i,
          lv_notes_available TYPE i.

    " Fetch all cash details for the given ATM
    SELECT * FROM zbank_atm_cash_t
      INTO TABLE lt_cash
      WHERE atm_nr = iv_atm_nr.

    " Check if ATM exists
    IF sy-subrc <> 0.
      ev_message = 'ATM not found'.
      RETURN.
    ENDIF.

    " Initialize total amount
    lv_total_cash = 0.

    " Calculate total available cash
    LOOP AT lt_cash INTO ls_cash.
      lv_total_cash = lv_total_cash + ( ls_cash-denomination * ls_cash-quantity ).
    ENDLOOP.

    " Check if ATM has enough total cash for withdrawal
    IF lv_total_cash < iv_withdraw_amount.
      ev_message = 'Insufficient funds in ATM'.
      ev_enough_cash = abap_false.
      RETURN.
    ENDIF.

    " Check if ATM has the right denominations to withdraw the requested amount
    lv_needed = iv_withdraw_amount.

    LOOP AT lt_cash INTO ls_cash.  " Removed WHERE clause
      IF lv_needed <= 0.
        EXIT.
      ENDIF.

      lv_notes_needed = lv_needed DIV ls_cash-denomination.
      lv_notes_available = ls_cash-quantity.

      IF lv_notes_needed > 0 AND lv_notes_available > 0.
        IF lv_notes_available >= lv_notes_needed.
          lv_needed = lv_needed - ( lv_notes_needed * ls_cash-denomination ).
        ELSE.
          lv_needed = lv_needed - ( lv_notes_available * ls_cash-denomination ).
        ENDIF.
      ENDIF.
    ENDLOOP.

    " If there's still an amount left, withdrawal is not possible
    IF lv_needed > 0.
      ev_message = 'ATM does not have the right denominations'.
      ev_enough_cash = abap_false.
      RETURN.
    ENDIF.

    " Set success output
    ev_total_cash = lv_total_cash.
    ev_enough_cash = abap_true.
    ev_message = 'Withdrawal possible'.
  ENDMETHOD.





class ZCL_DISPLAY definition
  public
  final
  create public .

public section.

  types:
    ZBANK_ATM_CASH_TAB type TABLE OF ZBANK_ATM_CASH_T .

  class-methods CHECK_BALANCE
    importing
      !IV_CARD_ID type ZBANK_CARD_TA-CARD_ID
    exporting
      !EV_BALANCE type ZBANK_ACCOUNT_TA-BALANCE .
  class-methods CHECK_ATM_BALANCE
    importing
      !IV_ATM_NR type ZBANK_ATM_CASH_T-ATM_NR
      !IV_WITHDRAW_AMOUNT type ZBANK_ACCOUNT_TA-BALANCE
    exporting
      !EV_TOTAL_CASH type ZBANK_ACCOUNT_TA-BALANCE
      !EV_ENOUGH_CASH type ABAP_BOOL
      !EV_MESSAGE type STRING
      !ET_DENOMINATIONS type ZBANK_ATM_CASH_TAB .
  class-methods WITHDRAW
    importing
      !IV_ATM_NR type ZBANK_ATM_CASH_T-ATM_NR
      !IV_CARD_ID type ZBANK_CARD_TA-CARD_ID
      !IV_WITHDRAW_AMOUNT type ZBANK_ACCOUNT_TA-BALANCE .
