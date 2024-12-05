```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might return unexpected results if there are employees with NULL salaries in the 'Sales' department.  The condition `salary > 100000` will treat NULL as neither greater nor less than 100000, effectively excluding those employees from the results, even if they might be considered high earners in the context of the department.