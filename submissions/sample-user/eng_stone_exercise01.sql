-- Sample submission answer file.
SELECT
    e.employee_id,
    e.first_name,
    e.last_name
FROM employees AS e
WHERE e.is_active = TRUE
ORDER BY e.last_name;
