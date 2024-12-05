```sql
-- Solution 1: Use IS NOT NULL to explicitly exclude NULL values
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;

-- Solution 2: Use COALESCE to replace NULL values with a default value (e.g., 0)
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;

-- Solution 3: Use a CASE statement for more complex handling
SELECT *, CASE WHEN salary IS NULL THEN 0 ELSE salary END as SalaryAdjusted FROM employees WHERE department = 'Sales' AND CASE WHEN salary IS NULL THEN 0 ELSE salary END > 100000;
```