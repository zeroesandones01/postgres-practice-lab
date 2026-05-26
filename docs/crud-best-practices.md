# CRUD Best Practices

## Insert

- Insert only required columns + meaningful defaults.
- Validate FK values exist before insert when possible.

## Update

- Filter narrowly using primary key or unique business key.
- Update `updated_at` for audit visibility.

## Delete

- Prefer soft delete (`is_active = FALSE`) for business records.
- Use hard delete only when clearly safe.

## Relational CRUD

- Insert parent rows before child rows.
- Handle related updates in a transaction.
- Verify changes with follow-up select queries.
