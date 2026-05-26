# Reporting Query Guidelines

## Reporting-Friendly SQL

- Prefer explicit column lists and meaningful aliases.
- Keep joins minimal and intentional.
- Include stable `ORDER BY` in user-facing reports.
- Use `COALESCE` where null handling affects report readability.
- Keep date filters explicit and understandable.

## Jaspersoft-Friendly Tips

- Use predictable column names for dataset fields.
- Keep query complexity moderate; move reusable logic to views/functions.
- Build reusable reporting views in `views/`.
