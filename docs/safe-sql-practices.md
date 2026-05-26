# Safe SQL Practices

## Core Rules

1. Never run `UPDATE` or `DELETE` without a `WHERE` clause unless intentional and approved.
2. Preview target rows first with a `SELECT` using the same filter.
3. Use transactions for multi-step CRUD changes.
4. Use parameterized queries from application code.
5. Avoid dynamic SQL string concatenation in application logic.

## Safe Update Pattern

```sql
BEGIN;

SELECT employee_id, department_id
FROM employees
WHERE employee_id = 3;

UPDATE employees
SET department_id = 3,
    updated_at = NOW()
WHERE employee_id = 3;

COMMIT;
```
