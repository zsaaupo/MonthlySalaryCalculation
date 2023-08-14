INSERT INTO DESIGNATION (designation_name)
VALUES
    ('CTO'),
    ('S_developer'),
    ('J_developer'),
    ('Trainee_Developer'),
    ('HR_head'),
    ('HR_Trainee'),
    ('S_QA'),
    ('J_QA'),
    ('T_QA'),
    ('Project_manager'),
    ('Network_admin');

INSERT INTO DEPARTMENT (department_name)
VALUES
    ('Software'),
    ('HR'),
    ('Network'),
    ('Management');

INSERT INTO EMPLOYEE (employee_name, date_of_birth, joining_date, designation_id, employee_type, department_id, employee_status, hometown, salary)
VALUES
    ('Tareq Naushad', '1985-05-15', '2022-02-01', 200000, 'Permanent', 300003, 1, 'Dhaka', 150000),
    ('Nafiuzzaman Parvas', '1992-08-20', '2021-11-01', 200001, 'Permanent', 300000, 1, 'Rangpur', 80000),
    ('Maruf Ahmed', '1990-04-10', '2021-11-01', 200001, 'Permanent', 300000, 0, 'Rangpur', 50000),
    ('Manzurul Hoque', '1995-12-30', '2022-11-01', 200002, 'Permanent', 300000, 1, 'Rangpur', 30000),
    ('Md. Zakaria Sarker', '2000-10-13', '2023-07-03', 200003, 'Provisional', 300000, 1, 'Dhaka', 5000),
    ('Ratul', '1999-10-18', '2022-11-01', 200003, 'Provisional', 300000, 0, 'Gazipur', 5000),
    ('Habiba Dewan', '1992-11-02', '2021-01-01', 200004, 'Permanent', 300001, 1, 'Dhaka', 50000),
    ('Jannatul Ferdous', '1997-03-08', '2023-04-01', 200005, 'Provisional', 300001, 1, 'Chittagong', 7000),
    ('Mehedi Hasan', '1989-09-22', '2022-10-01', 200009, 'Permanent', 300003, 1, 'Dhaka', 35000),
    ('Sahadat Hossain', '1987-06-12', '2022-02-01', 200010, 'Permanent', 300002, 1, 'Sylhet', 40000),
	('Kamrul Islam', '2001-06-12', '2023-07-01', 200003, 'Intern', 300000, 1, 'Gazipur', 0),
	('Muhsina Rifa', '2001-06-12', '2023-07-01', 200007, 'Provisional', 300000, 1, 'Dhaka', 7000);