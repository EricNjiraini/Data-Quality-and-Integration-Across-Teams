-- SQL Script for Data Integrity Checks

-- Check for NULLs in critical columns
SELECT 'column_name' AS column, COUNT(*) AS null_count
FROM your_table
WHERE column_name IS NULL;

-- Check for duplicate primary keys
SELECT primary_key_column, COUNT(*) 
FROM your_table
GROUP BY primary_key_column
HAVING COUNT(*) > 1;

-- Check data type mismatches or outliers
SELECT *
FROM your_table
WHERE amount < 0 OR amount > 100000;
