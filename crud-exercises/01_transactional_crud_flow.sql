-- Scenario: onboarding a new employee and creating first transaction note.
-- Task 1: BEGIN transaction.
-- Task 2: INSERT employee row.
-- Task 3: INSERT related employee_transactions row.
-- Task 4: Verify inserted rows with SELECT.
-- Task 5: COMMIT.

-- Scenario: safe deactivation.
-- Task 6: Mark inactive employees by employee_id using UPDATE ... WHERE ...
-- Task 7: Confirm affected rows.

-- Scenario: safe cleanup.
-- Task 8: Delete only inactive transactions older than a selected date (with WHERE).
