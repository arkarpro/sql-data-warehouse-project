--Check for nulls or duplicates in primary key
SELECT 
	cst_id,
	COUNT(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT (*) > 1 OR cst_id IS NULL

-- Check for unwanted Spaces

SELECT cst_gndr
FROM bronze.crm_cust_info
Where cst_gndr != TRIM(cst_gndr)

SELECT cst_firstname
FROM bronze.crm_cust_info
Where cst_firstname != TRIM(cst_firstname)

SELECT cst_lastname
FROM bronze.crm_cust_info
Where cst_lastname != TRIM(cst_lastname)
