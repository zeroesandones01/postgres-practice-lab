INSERT INTO employee_transactions (employee_id, transaction_type, amount, transaction_date, notes) VALUES
(2, 'BONUS', 1500.00, '2025-01-15', 'Quarterly performance bonus'),
(2, 'EXPENSE_REIMBURSEMENT', 240.90, '2025-02-10', 'Conference travel'),
(3, 'BONUS', 900.00, '2025-02-20', 'Team achievement bonus'),
(4, 'SALARY_ADJUSTMENT', 1200.00, '2025-03-01', 'Annual salary revision'),
(5, 'EXPENSE_REIMBURSEMENT', 110.00, '2025-03-15', 'Office supplies');

INSERT INTO report_runs (report_name, run_by_user_id, row_count) VALUES
('active_employees_by_department', 2, 4),
('monthly_transaction_summary', 1, 3);
