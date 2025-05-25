-- Check for Invalid Dates

SELECT
*
FROM bronze.crm_sales_details
--WHERE sls_due_dt <=0
--OR LEN(sls_due_dt) != 8
--OR sls_due_dt > 20500101 
--OR sls_due_dt < 19000101
WHERE sls_order_dt > sls_ship_dt or sls_order_dt > sls_due_dt or sls_ship_dt > sls_due_dt