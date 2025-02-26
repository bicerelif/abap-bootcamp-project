REPORT Z_ALV_REPO.

TABLES: zbank_atm_cash_t.

DATA: gt_atm_cash TYPE TABLE OF zbank_atm_cash_t,
      gs_atm_cash TYPE zbank_atm_cash_t.

DATA: gt_fieldcat TYPE TABLE OF slis_fieldcat_alv,
      gs_fieldcat TYPE slis_fieldcat_alv.

DATA: gs_layout TYPE slis_layout_alv.
DATA: g_repid TYPE sy-repid.


SELECT * FROM zbank_atm_cash_t INTO TABLE gt_atm_cash.

IF gt_atm_cash IS INITIAL.
  MESSAGE 'No data found' TYPE 'I'.
  EXIT.
ENDIF.

CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'P_KEY'.
gs_fieldcat-seltext_m = 'P Key'.
gs_fieldcat-outputlen = 35.
APPEND gs_fieldcat TO gt_fieldcat.

CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'ATM_NR'.
gs_fieldcat-seltext_m = 'ATM Number'.
gs_fieldcat-outputlen = 10.
APPEND gs_fieldcat TO gt_fieldcat.

CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'DENOMINATION'.
gs_fieldcat-seltext_m = 'Denomination'.
gs_fieldcat-outputlen = 10.
APPEND gs_fieldcat TO gt_fieldcat.

CLEAR gs_fieldcat.
gs_fieldcat-fieldname = 'QUANTITY'.
gs_fieldcat-seltext_m = 'Quantity'.
gs_fieldcat-outputlen = 10.
APPEND gs_fieldcat TO gt_fieldcat.


g_repid = sy-repid.
gs_layout-zebra = 'X'.
gs_layout-colwidth_optimize = 'X'.


CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    i_callback_program = g_repid
    is_layout          = gs_layout
    it_fieldcat        = gt_fieldcat
  TABLES
    t_outtab           = gt_atm_cash
  EXCEPTIONS
    program_error      = 1
    others             = 2.

IF sy-subrc <> 0.
  MESSAGE 'Error displaying ALV' TYPE 'E'.
ENDIF.
