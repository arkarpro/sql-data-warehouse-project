--Check For Nulls or Duplicates in Primary Key
--Expectation: No Result

SELECT
prd_id,
COUNT(*)
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL

--Check for unwant spaces
--Expectation: No Results
SELECT prd_nm 
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm)

--Check for NULLS or Negative Numbers
--Expectation: No results
SELECT prd_cost
FROM silver.crm_prd_info
WHERE prd_cost Is NULL or prd_cost < 0

--Data Standardization & Consistency
SELECT distinct prd_line
--CASE 
--	WHEN UPPER(TRIM(prd_line)) = 'M' THEN 'Mountain'
--	WHEN UPPER(TRIM(prd_line)) = 'R' THEN 'Road'
--	WHEN UPPER(TRIM(prd_line)) = 'S' THEN 'other Sales'
--	WHEN UPPER(TRIM(prd_line)) = 'T' THEN 'Touring'
--	ELSE 'n/a'
--END As prd_line
FROM silver.crm_prd_info

-- Check for Invalid Date Orders
SELECT * 
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt

SELECT * FROM silver.crm_prd_info