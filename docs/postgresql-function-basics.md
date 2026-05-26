# PostgreSQL Function Basics

## Why Functions Here

Functions help centralize reusable reporting or lookup logic.

## Basics

- Use `CREATE OR REPLACE FUNCTION` for iterative practice.
- Declare return type clearly (`RETURNS TABLE` for report datasets).
- Keep functions small and focused.

## Example

```sql
CREATE OR REPLACE FUNCTION fn_active_employee_count()
RETURNS INTEGER
LANGUAGE sql
AS $$
    SELECT COUNT(*)::INTEGER
    FROM employees
    WHERE is_active = TRUE;
$$;
```
