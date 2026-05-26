# SQL Formatting Standards

## Goals

- Keep SQL readable for teammates.
- Make review fast and predictable.
- Reduce mistakes in joins and filters.

## Standards

1. Use uppercase SQL keywords (`SELECT`, `FROM`, `WHERE`).
2. Use snake_case for identifiers.
3. One selected column per line for medium/large queries.
4. Align joins and predicates clearly.
5. Always alias derived columns with meaningful names.
6. Avoid `SELECT *` in production-style queries.
7. End files with semicolons.

## Example

```sql
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
```
