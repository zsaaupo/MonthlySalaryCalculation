CREATE TABLE DESIGNATION(
	designation_id		INT IDENTITY(200000, 1)			PRIMARY KEY,
    	designation_name	VARCHAR(MAX)				NOT NULL

);


CREATE TABLE DEPARTMENT(

	department_id		INT IDENTITY(300000, 1)			PRIMARY KEY,
    	department_name		VARCHAR(MAX)				NOT NULL

);


CREATE TABLE EMPLOYEE(

	employee_id			INT IDENTITY(100000, 1)		PRIMARY KEY,
    	employee_name			VARCHAR(MAX)												NOT NULL,
    	date_of_birth			DATE													NOT NULL,
    	joining_date			DATE													NOT NULL,
	designation_id			INT				FOREIGN KEY REFERENCES	DESIGNATION(designation_id)			NOT NULL,
	employee_type			VARCHAR(MAX)												NOT NULL,
	department_id			INT				FOREIGN KEY REFERENCES	DEPARTMENT(department_id)			NOT NULL,
    	employee_status			INT													NOT NULL,
	hometown			VARCHAR(MAX)												NOT NULL,
	salary				INT													NULL

);


CREATE TABLE MONTHLY_SALARY (
	
	salary_id			INT				IDENTITY(400000, 1)							PRIMARY KEY,
	employee_id			INT				FOREIGN KEY REFERENCES	EMPLOYEE(employee_id)				NOT NULL,
    	present_salary			INT													NOT NULL,
	salary_month			DATE													NOT NULL,
	transport_allowance		INT													NOT NULL,
	provisional_fund		INT													NOT NULL,
	net_salary			INT													NOT NULL

);
