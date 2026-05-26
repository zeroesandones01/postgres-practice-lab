# postgres-practice-lab

Lightweight PostgreSQL practice repository for onboarding, SQL standardization, CRUD training, mentorship, and refresher learning.

## Purpose

This repository helps a small in-house development team practice:

- PostgreSQL basics and schema understanding
- Safe and readable CRUD operations
- SQL formatting and naming conventions
- Joins, filtering, sorting, grouping, and reporting patterns
- PostgreSQL functions, views, indexes, and constraints
- Pull Request workflow and SQL/code review habits

The exercises are intentionally beginner-friendly and use fake sample data only.

## Suggested Learning Order

1. Read standards docs in `docs/`
2. Import schema from `schemas/`
3. Run seed scripts from `seed-data/`
4. Study examples in `examples/`
5. Complete query exercises in `exercises/`
6. Complete transactional CRUD in `crud-exercises/`
7. Compare with `solutions/`
8. Review anti-patterns in `bad-examples/`

## Getting Started - Choose Your Tool

Both setup methods below create the same `postgres_practice_lab` practice environment. Choose the one that feels most comfortable for you.

- **Option A: Terminal (`psql`)** - Follow [Quick Start (Terminal/psql Method)](#quick-start-terminalpsql-method)
- **Option B: GUI Tool (`pgAdmin`, `DBeaver`, `DataGrip`, and more)** - Follow the [GUI Setup Guide](docs/gui-setup-guide.md)

## Quick Start (Terminal/psql Method)

> Prefer a GUI? See the [GUI Setup Guide](docs/gui-setup-guide.md).

### 1) Create local practice database

```bash
createdb postgres_practice_lab
```

### 2) Import schema and objects

```bash
psql -d postgres_practice_lab -f schemas/01_create_tables.sql
psql -d postgres_practice_lab -f schemas/02_constraints_indexes_sequences.sql
psql -d postgres_practice_lab -f views/01_reporting_views.sql
psql -d postgres_practice_lab -f functions/01_reporting_functions.sql
```

### 3) Load seed data

```bash
psql -d postgres_practice_lab -f seed-data/01_seed_core_data.sql
psql -d postgres_practice_lab -f seed-data/02_seed_transactions.sql
```

### 4) Run examples and exercises

```bash
psql -d postgres_practice_lab -f examples/01_good_queries.sql
psql -d postgres_practice_lab -f exercises/01_select_filter_sort.sql
```

## Repository Structure

- `schemas/` - table creation and core objects
- `seed-data/` - fake sample data for practice
- `sample-data/` - compact inserts for quick demos
- `views/` - reporting-friendly views
- `functions/` - beginner-friendly PostgreSQL functions
- `examples/` - good SQL examples (formatting, safety, readability)
- `bad-examples/` - intentionally bad SQL patterns to fix
- `exercises/` - core SQL exercises
- `crud-exercises/` - CRUD and transaction flow exercises
- `solutions/` - example solution scripts
- `submissions/` - learner submissions for PR review
- `docs/` - standards and review guidance
- `migrations/` - optional ordered change scripts

## Submission and PR Workflow (Practice)

Recommended workflow:

1. Clone repository
2. Import schemas
3. Run seed scripts
4. Complete exercises
5. Create feature branch
6. Add answers in `submissions/<your-name>/` using the naming pattern `<department_code>_<employee_last_name>_exerciseNN.sql`
7. Commit changes
8. Open Pull Request
9. Reviewer provides feedback
10. Merge after approval

Submissions are for learning and mentorship. PRs should simulate real team process.

See `submissions/README.md` for the full submission naming convention.

### Submission Folder Convention

Example:

```text
submissions/
  sample-user/
    eng_stone_exercise01.sql
    eng_stone_exercise02.sql
    notes.md
```

## Review Guidelines for Mentors

When reviewing SQL submissions, focus on:

- Readability and formatting consistency
- Safety (especially `UPDATE`/`DELETE` with `WHERE` clauses)
- Correct joins and relational logic
- Maintainability and naming clarity
- Reporting-friendly output (clear aliases, stable ordering)

## Tooling Context

This lab aligns with a stack that commonly includes:

- Java backend services
- PostgreSQL database
- Jaspersoft reporting
- Jenkins CI/CD
- GitHub Pull Request workflow
