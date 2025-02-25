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
