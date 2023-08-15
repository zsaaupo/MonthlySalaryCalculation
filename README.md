# Monthly Salary Calculation

This is a SQL project for calculating the monthly salary for every employee of an office.

# Diagram
![Screenshot 2023-08-15 151214](https://github.com/zsaaupo/MonthlySalaryCalculation/assets/46224041/62f4240d-d1f5-4e6e-b4f9-9a7883c55ff7)

## Salary Conditions

* Employee status must be active.

    * If the salary calculation month is the same as the employee's joining month, the employee's salary will not be counted.

        * For Employee Type: Intern
            - Employees will not receive any salary.
        * For Employee type: Provisional
            - Employees will receive only the basic salary.
        * For Employee type: Permanent
            - Employees will receive the basic salary.
            - Employees will receive a 5% transport allowance based on the basic salary.
            - A 10% provisional fund deduction from the basic salary will be applied.
            - Net salary = basic salary + transport allowance - provisional fund deduction.
        
## SQL Topics

**Logical:**
* WHILE Loop
* IF-ELSE Statements
* Variables

**Advanced:**
* Stored Procedures
* Cursors

## Demo Data
**Departments**
* Software
* HR
* Network
* Management

**Designations**
* CTO
* Senior Developer
* Junior Developer
* Trainee Developer
* HR Head
* HR Trainee
* Senior QA
* Junior QA
* Trainee QA
* Project Manager
* Network Admin

**Employees**
* 12 sets of randomly generated employee data

[Click here](https://github.com/zsaaupo/MonthlySalaryCalculation/blob/main/TestData/DemoDataInsert.sql) to access this dataset.

## Execution

Begin by executing all SQL files.

```bash
EXEC MonthlySalary @date = 'Calculation date';
```

Access the Salary table:

```bash
SELECT * FROM MONTHLY_SALARY;
```
## 🚀 About Me
I'm a Software engineer...


## 🔗 Links
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://zsaaupo.my.canva.site/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/zsaaupo/)

## 🛠 Skills
Python, Django, REST framework, SQL, JavaScript, HTML, CSS, JAVA, Spring Boot...
