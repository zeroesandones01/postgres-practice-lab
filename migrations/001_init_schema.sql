-- Optional migration-style entrypoint for teams using ordered scripts.
\i ../schemas/01_create_tables.sql
\i ../schemas/02_constraints_indexes_sequences.sql
\i ../views/01_reporting_views.sql
\i ../functions/01_reporting_functions.sql
