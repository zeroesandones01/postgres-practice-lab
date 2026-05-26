ALTER TABLE departments
    ADD CONSTRAINT uq_departments_department_code UNIQUE (department_code);

ALTER TABLE employees
    ADD CONSTRAINT uq_employees_employee_number UNIQUE (employee_number),
    ADD CONSTRAINT uq_employees_email UNIQUE (email),
    ADD CONSTRAINT chk_employees_salary_positive CHECK (salary >= 0);

ALTER TABLE app_users
    ADD CONSTRAINT uq_app_users_username UNIQUE (username),
    ADD CONSTRAINT uq_app_users_email UNIQUE (email);

ALTER TABLE roles
    ADD CONSTRAINT uq_roles_role_name UNIQUE (role_name);

ALTER TABLE permissions
    ADD CONSTRAINT uq_permissions_permission_name UNIQUE (permission_name);

ALTER TABLE employees
    ADD CONSTRAINT fk_employees_department
        FOREIGN KEY (department_id) REFERENCES departments (department_id),
    ADD CONSTRAINT fk_employees_manager
        FOREIGN KEY (manager_id) REFERENCES employees (employee_id);

ALTER TABLE user_roles
    ADD CONSTRAINT fk_user_roles_user
        FOREIGN KEY (user_id) REFERENCES app_users (user_id),
    ADD CONSTRAINT fk_user_roles_role
        FOREIGN KEY (role_id) REFERENCES roles (role_id);

ALTER TABLE role_permissions
    ADD CONSTRAINT fk_role_permissions_role
        FOREIGN KEY (role_id) REFERENCES roles (role_id),
    ADD CONSTRAINT fk_role_permissions_permission
        FOREIGN KEY (permission_id) REFERENCES permissions (permission_id);

ALTER TABLE employee_transactions
    ADD CONSTRAINT fk_employee_transactions_employee
        FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
    ADD CONSTRAINT chk_employee_transactions_amount_nonzero CHECK (amount <> 0);

ALTER TABLE report_runs
    ADD CONSTRAINT fk_report_runs_user
        FOREIGN KEY (run_by_user_id) REFERENCES app_users (user_id);

CREATE INDEX idx_employees_department_id ON employees (department_id);
CREATE INDEX idx_employees_is_active ON employees (is_active);
CREATE INDEX idx_employee_transactions_employee_id ON employee_transactions (employee_id);
CREATE INDEX idx_employee_transactions_date ON employee_transactions (transaction_date);

CREATE SEQUENCE IF NOT EXISTS seq_report_batch START WITH 1000 INCREMENT BY 1;
