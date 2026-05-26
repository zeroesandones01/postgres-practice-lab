CREATE OR REPLACE FUNCTION fn_department_headcount()
RETURNS TABLE (
    department_code VARCHAR,
    department_name VARCHAR,
    active_employee_count BIGINT
)
LANGUAGE sql
AS $$
    SELECT
        d.department_code,
        d.department_name,
        COUNT(e.employee_id) FILTER (WHERE e.is_active = TRUE) AS active_employee_count
    FROM departments AS d
    LEFT JOIN employees AS e
        ON e.department_id = d.department_id
    GROUP BY d.department_code, d.department_name
    ORDER BY d.department_name;
$$;

CREATE OR REPLACE FUNCTION fn_employee_transaction_total(p_employee_id INTEGER)
RETURNS NUMERIC(12, 2)
LANGUAGE sql
AS $$
    SELECT COALESCE(SUM(et.amount), 0)::NUMERIC(12, 2)
    FROM employee_transactions AS et
    WHERE et.employee_id = p_employee_id;
$$;
