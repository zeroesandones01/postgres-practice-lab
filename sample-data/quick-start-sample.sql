-- Minimal sample insert script for quick experimentation.
INSERT INTO departments (department_code, department_name)
VALUES ('QA', 'Quality Assurance')
ON CONFLICT (department_code) DO NOTHING;

INSERT INTO employees (
    employee_number,
    first_name,
    last_name,
    email,
    hire_date,
    salary,
    department_id
)
SELECT
    'E-2001',
    'Ivy',
    'Lane',
    'ivy.lane@example.com',
    CURRENT_DATE,
    55000,
    d.department_id
FROM departments AS d
WHERE d.department_code = 'QA'
ON CONFLICT (employee_number) DO NOTHING;
