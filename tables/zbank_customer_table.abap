REPORT ZCUSTOMER_TABLE_POP.

DATA : lwa_cust_data TYPE ZCUSTOMER_TA,
       lit_cust_data TYPE TABLE OF ZCUSTOMER_TA.

lwa_cust_data-customer_id = '3F63F81E34C21EEFBCD5E54AE668AB37' .
lwa_cust_data-first_name = 'Abraham'.
lwa_cust_data-last_name = 'Lincoln'.
lwa_cust_data-dob = '20030907'.
lwa_cust_data-address = 'ALaaa il 1.'.
lwa_cust_data-phone = '29856496'.
APPEND lwa_cust_data TO lit_cust_data.


LOOP AT lit_cust_data INTO lwa_cust_data.
  INSERT ZCUSTOMER_TA FROM lwa_cust_data.
ENDLOOP.
