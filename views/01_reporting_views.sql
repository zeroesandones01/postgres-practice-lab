CREATE OR REPLACE VIEW vw_employee_department AS
SELECT
    e.employee_id,
    e.employee_number,
    e.first_name,
    e.last_name,
    e.email,
    d.department_code,
    d.department_name,
    e.hire_date,
    e.salary,
    e.is_active
FROM employees AS e
JOIN departments AS d
    ON d.department_id = e.department_id;

CREATE OR REPLACE VIEW vw_department_headcount AS
SELECT
    d.department_id,
    d.department_code,
    d.department_name,
    COUNT(e.employee_id) FILTER (WHERE e.is_active = TRUE) AS active_employee_count,
    COUNT(e.employee_id) AS total_employee_count
FROM departments AS d
LEFT JOIN employees AS e
    ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_code, d.department_name;
