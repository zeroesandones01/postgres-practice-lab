-- Good SELECT with readable formatting, filter, and ordering.
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name,
    e.salary
FROM employees AS e
JOIN departments AS d
    ON d.department_id = e.department_id
WHERE e.is_active = TRUE
ORDER BY e.last_name, e.first_name;

-- Safe update pattern.
BEGIN;

UPDATE employees
SET salary = salary + 500,
    updated_at = NOW()
WHERE employee_id = 2;

COMMIT;

-- Reporting query pattern.
SELECT
    DATE_TRUNC('month', transaction_date)::DATE AS transaction_month,
    transaction_type,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM employee_transactions
GROUP BY DATE_TRUNC('month', transaction_date)::DATE, transaction_type
ORDER BY transaction_month, transaction_type;
