# Naming Conventions

## Tables

- Use plural, snake_case table names (`employees`, `user_roles`).
- Use clear business language over abbreviations.

## Columns

- Primary key: `<table_singular>_id` where practical (`employee_id`).
- Foreign key: `<referenced_table_singular>_id` (`department_id`).
- Booleans: prefix with `is_` (`is_active`).
- Timestamps: suffix with `_at` (`created_at`, `updated_at`).

## Other Objects

- Views: prefix with `vw_`.
- Functions: verb-focused names (`fn_department_headcount`).
- Indexes: `idx_<table>_<column>`.
- Constraints: `chk_`, `fk_`, `uq_` prefixes.
