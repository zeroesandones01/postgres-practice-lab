-- Sample solution for Exercise: active employees with department.
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employees AS e
JOIN departments AS d
    ON d.department_id = e.department_id
WHERE e.is_active = TRUE
ORDER BY e.last_name, e.first_name;

-- Sample safe delete solution.
DELETE FROM employee_transactions
WHERE transaction_id = 1;

-- Sample group/report solution.
SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count,
    AVG(e.salary) AS avg_salary
FROM departments AS d
LEFT JOIN employees AS e
    ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY d.department_name;
