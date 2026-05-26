-- Optional migration-style entrypoint for teams using ordered scripts.
\ir ../schemas/01_create_tables.sql
\ir ../schemas/02_constraints_indexes_sequences.sql
\ir ../views/01_reporting_views.sql
\ir ../functions/01_reporting_functions.sql
