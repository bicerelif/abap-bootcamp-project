REPORT zbank_card_val.

TYPES: BEGIN OF ty_card_details,
         card_id     TYPE char16,
         pin         TYPE char4,
         card_status TYPE char1,
         balance     TYPE Char16,
       END OF ty_card_details.

DATA: lt_ic_details TYPE zcl_validation=>ty_card_d,
      lt_ec_details TYPE zcl_validation=>ty_card_d,
      ls_ic_details TYPE ty_card_details,
      ls_ec_details TYPE ty_card_details.

PARAMETERS: p_card TYPE char16 OBLIGATORY,
            p_pin  TYPE char4 OBLIGATORY.

ls_ic_details-card_id = p_card.
ls_ic_details-pin = p_pin.

APPEND ls_ic_details TO lt_ic_details.

CALL METHOD zcl_validation=>check_status
  EXPORTING
    ic_details = lt_ic_details
  IMPORTING
    ec_details = lt_ec_details.

READ TABLE lt_ec_details INTO ls_ec_details INDEX 1.

IF ls_ec_details-card_status IS NOT INITIAL.
  WRITE: 'Login Successful!',
   / 'Card Status:', ls_ec_details-card_status.
ELSE.
  WRITE: 'Invalid Card Number or PIN!'.
ENDIF.
