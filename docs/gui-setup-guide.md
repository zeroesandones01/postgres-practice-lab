# GUI Setup Guide

This guide helps you set up the same `postgres_practice_lab` environment using a GUI database tool instead of terminal-only `psql` commands.

## Before You Start

Make sure you already have:

1. PostgreSQL installed and running locally.
2. A local database named `postgres_practice_lab`.
3. The username and password for your local PostgreSQL instance.
4. This repository cloned on your machine so you can open the `.sql` files.

If you still need to create the database itself, you can use a GUI tool to create a new PostgreSQL database named `postgres_practice_lab`, or run:

```bash
createdb postgres_practice_lab
```

## pgAdmin Setup

pgAdmin is a good beginner-friendly choice because it shows databases, schemas, tables, and query results in a visual interface.

### Connection Details

Use these values when connecting to your local practice database:

- **Host name/address:** `localhost`
- **Port:** `5432`
- **Maintenance database or database name:** `postgres_practice_lab`
- **Username:** your local PostgreSQL username (often `postgres`)
- **Password:** your local PostgreSQL password

If your local PostgreSQL installation uses different values, use the ones from your machine.

### Connect to the Database in pgAdmin

1. Open pgAdmin.
2. In the left navigation tree, right-click **Servers**.
3. Select **Register** > **Server...**.
4. In the **General** tab, enter a name such as `Postgres Practice Lab`.
5. Open the **Connection** tab.
6. Enter `localhost` for the host, `5432` for the port, `postgres_practice_lab` for the maintenance database, and your local PostgreSQL username/password.
7. Select **Save**.
8. Expand the new server, then expand **Databases** to confirm that `postgres_practice_lab` is available.

### Open the Query Tool

To run SQL files in pgAdmin:

1. In the left navigation tree, expand **Servers** > your server > **Databases**.
2. Right-click `postgres_practice_lab`.
3. Select **Query Tool**.
4. A SQL editor tab opens. This is where you can paste queries or open `.sql` files from the repository.

If you are looking for the correct screen, the Query Tool usually shows:

- A tree browser on the left
- A SQL editor pane in the middle
- A toolbar at the top with an **Open File** icon and an **Execute/Run** button
- A results/output panel at the bottom

### Execute a Single `.sql` File in pgAdmin

1. Open the **Query Tool** for `postgres_practice_lab`.
2. Select the **Open File** button in the toolbar, or use **File** > **Open**.
3. Browse to the repository folder and choose the SQL file you want to run, such as:
   - `schemas/01_create_tables.sql`
   - `seed-data/01_seed_core_data.sql`
4. Review the SQL in the editor.
5. Select the **Execute/Run** button (lightning/play icon).
6. Check the **Messages** or **Output** panel for success or error details.

### Run the Full Setup in the Correct Order

To reach the same environment as the terminal quick start, open and execute these files in this order:

1. `schemas/01_create_tables.sql`
2. `schemas/02_constraints_indexes_sequences.sql`
3. `views/01_reporting_views.sql`
4. `functions/01_reporting_functions.sql`
5. `seed-data/01_seed_core_data.sql`
6. `seed-data/02_seed_transactions.sql`

This order matters because tables should exist before constraints, views, functions, and seed data are loaded.

### Run Multiple Schema and Seed Files in pgAdmin

pgAdmin usually runs one open file at a time in the Query Tool, so the simplest beginner workflow is:

1. Open the first file from the ordered list above.
2. Run it and confirm success in the messages panel.
3. Open the next file.
4. Repeat until all schema and seed files are complete.

Helpful beginner tips:

- Wait for each script to finish before opening the next one.
- If a script fails, fix that issue before continuing so later files do not fail for missing objects.
- Save your Query Tool tab only if you made changes intentionally. For normal setup, you are just executing the repository files.

### Run Examples and Exercises in pgAdmin

After setup is complete, you can open and run practice files the same way:

- `examples/01_good_queries.sql`
- `exercises/01_select_filter_sort.sql`
- `exercises/02_crud_join_group_reporting.sql`
- `exercises/03_database_objects.sql`
- `crud-exercises/01_transactional_crud_flow.sql`

## Alternative GUI Tools

All of the tools below can reach the same functional result: connect to `postgres_practice_lab`, run the schema files, load seed data, and then work through the exercises.

### DBeaver

**Good for:** learners who want a strong free cross-platform database client with good SQL file handling.

**Connection setup:**

1. Select **New Database Connection**.
2. Choose **PostgreSQL**.
3. Enter `localhost`, port `5432`, database `postgres_practice_lab`, and your username/password.
4. Test the connection and save it.

**Run scripts:**

- Open a SQL script from the repository in DBeaver's SQL editor.
- Execute each setup file in the same order listed in the pgAdmin section.

**Pros:** free, popular, supports many databases, good script management.
**Cons:** the interface can feel busy at first.

### DataGrip

**Good for:** learners already using JetBrains tools and who want strong SQL editing support.

**Connection setup:**

1. Add a new **Data Source** for PostgreSQL.
2. Enter `localhost`, port `5432`, database `postgres_practice_lab`, and your username/password.
3. Download any requested driver files and test the connection.

**Run scripts:**

- Open the repository folder or individual `.sql` files in DataGrip.
- Use the database console or file run action to execute the setup scripts in order.

**Pros:** excellent editor experience, strong navigation, helpful inspections.
**Cons:** paid JetBrains product unless you already have access.

### Azure Data Studio (with PostgreSQL extension)

**Good for:** learners who like a lightweight editor-style workflow.

**Connection setup:**

1. Install the PostgreSQL extension if prompted.
2. Create a new PostgreSQL connection.
3. Enter `localhost`, `5432`, `postgres_practice_lab`, and your username/password.
4. Save the connection.

**Run scripts:**

- Open each `.sql` file in the editor.
- Connect the editor tab to `postgres_practice_lab`.
- Run the setup files in order.

**Pros:** familiar editor experience, lightweight compared with some full database clients.
**Cons:** PostgreSQL support may require extensions and can feel less database-focused than dedicated tools.

### TablePlus

**Good for:** learners who want a clean and simple GUI for quick database browsing.

**Connection setup:**

1. Create a new PostgreSQL connection.
2. Enter `localhost`, port `5432`, database `postgres_practice_lab`, and your username/password.
3. Test and save the connection.

**Run scripts:**

- Open or paste SQL into a query tab.
- Execute the setup files in order.

**Pros:** clean interface, easy to learn, fast for browsing data.
**Cons:** some features may depend on the paid version.

## Which Tool Should You Choose?

- Choose **pgAdmin** if you want a PostgreSQL-focused GUI and beginner-friendly visual database navigation.
- Choose **DBeaver** if you want a strong free general-purpose database client.
- Choose **DataGrip** if you already use JetBrains products and want a powerful SQL editor.
- Choose **Azure Data Studio** if you prefer an editor-style experience.
- Choose **TablePlus** if you want a clean, minimal interface.

No matter which tool you choose, the setup goal is the same: create or connect to `postgres_practice_lab`, run the schema files, load the seed data, and then start practicing with the examples and exercises.
