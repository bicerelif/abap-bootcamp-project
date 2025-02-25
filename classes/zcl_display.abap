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
