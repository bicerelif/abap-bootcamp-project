CLASS zcl_validation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_card_details,
        card_id     TYPE char16,
        pin         TYPE char4,
        card_status TYPE char1,
        balance     TYPE Char16,
      END OF ty_card_details .
    TYPES:
      ty_card TYPE TABLE OF zbank_card_ta .
    TYPES:
      ty_card_d TYPE TABLE OF ty_card_details .

    CLASS-METHODS check_status
      IMPORTING
        !ic_details TYPE ty_card_d
      EXPORTING
        !ec_details TYPE ty_card_d .



METHOD check_status.
DATA: ls_card TYPE zbank_card_ta,
ls_input TYPE ty_card_details.

READ TABLE ic_details INTO ls_input INDEX 1.
SELECT SINGLE * FROM zbank_card_ta INTO ls_card
WHERE card_id = ls_input-card_id.

IF sy-subrc = 0.
IF ls_card-pin = ls_input-pin.
CLEAR ec_details.
ls_input-card_status = ls_card-card_status.
APPEND ls_input TO ec_details.
ELSE.
CLEAR ec_details.
ENDIF.
ELSE.
CLEAR ec_details.
ENDIF.
ENDMETHOD.
