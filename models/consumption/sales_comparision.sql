select PRODUCT_NAME, SALESAMT_21, SALESAMT_22, SALESAMT_23
,{{perc_change('salesamt_21','salesamt_23')}} as "SALE%_FROM_21"
,{{perc_change('salesamt_22','salesamt_23')}} as "SALE%_FROM_21"
from SALES_DB.LANDING.PRODUCT_SALES