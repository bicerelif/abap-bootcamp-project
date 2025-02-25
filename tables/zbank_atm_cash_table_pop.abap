REPORT ZBANK_ATM_CASH_TABLE_POP.



DATA: lt_atm_cash TYPE TABLE OF zbank_atm_cash_t,
      ls_atm_cash TYPE zbank_atm_cash_t.

DATA: lt_denominations TYPE TABLE OF int4,
      lv_atm_id TYPE raw16.

lt_denominations = VALUE #( ( 5 ) ( 10 ) ( 20 ) ( 50 ) ( 100 ) ( 200 ) ( 500 ) ).

DO 3 TIMES.
  lv_atm_id = cl_reca_guid=>get_new_guid( ).

  LOOP AT lt_denominations INTO ls_atm_cash-denomination.
    ls_atm_cash-p_key = cl_reca_guid=>get_new_guid( ).
    ls_atm_cash-atm_nr = '1'. "1, 2, 3, 4, etc.
    ls_atm_cash-quantity = 100 + sy-index * 10.
    APPEND ls_atm_cash TO lt_atm_cash.
  ENDLOOP.
ENDDO.
