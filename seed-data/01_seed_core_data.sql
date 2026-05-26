INSERT INTO departments (department_code, department_name) VALUES
('ENG', 'Engineering'),
('HR', 'Human Resources'),
('FIN', 'Finance'),
('OPS', 'Operations');

INSERT INTO employees (employee_number, first_name, last_name, email, hire_date, salary, department_id, manager_id) VALUES
('E-1001', 'Ava', 'Stone', 'ava.stone@example.com', '2021-01-15', 92000, 1, NULL),
('E-1002', 'Liam', 'Reed', 'liam.reed@example.com', '2022-03-10', 70000, 1, 1),
('E-1003', 'Mia', 'Cole', 'mia.cole@example.com', '2023-07-03', 68000, 2, NULL),
('E-1004', 'Noah', 'Ward', 'noah.ward@example.com', '2020-11-05', 87000, 3, NULL),
('E-1005', 'Zoe', 'Fox', 'zoe.fox@example.com', '2024-02-01', 62000, 4, NULL);

INSERT INTO app_users (username, full_name, email) VALUES
('admin.user', 'Admin User', 'admin.user@example.com'),
('mentor.jane', 'Jane Mentor', 'mentor.jane@example.com'),
('dev.sam', 'Sam Developer', 'dev.sam@example.com');

INSERT INTO roles (role_name) VALUES
('ADMIN'),
('REPORT_VIEWER'),
('DEVELOPER');

INSERT INTO permissions (permission_name) VALUES
('employees.read'),
('employees.write'),
('reports.run'),
('roles.assign');

INSERT INTO user_roles (user_id, role_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO role_permissions (role_id, permission_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4),
(2, 1), (2, 3),
(3, 1), (3, 2);
