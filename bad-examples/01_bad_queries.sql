-- BAD: SELECT * is unclear in production/reporting SQL.
SELECT * FROM employees;

-- BAD: unreadable formatting.
SELECT e.employee_id,e.first_name,e.last_name,d.department_name FROM employees e JOIN departments d ON d.department_id=e.department_id WHERE e.is_active=true ORDER BY e.last_name;

-- BAD: unsafe update (missing WHERE).
UPDATE employees SET salary = 0;

-- BAD: unsafe delete (missing WHERE).
DELETE FROM employee_transactions;

-- BAD: unnecessary nested query.
SELECT *
FROM (
    SELECT *
    FROM (
        SELECT employee_id, first_name, last_name
        FROM employees
    ) t1
) t2;
