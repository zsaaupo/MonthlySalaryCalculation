# Monthly Salary Calculation

This is a SQL project for calculating the monthly salary for every employee of an office.

# Diagram
![Screenshot 2023-08-15 151214](https://github.com/zsaaupo/MonthlySalaryCalculation/assets/46224041/62f4240d-d1f5-4e6e-b4f9-9a7883c55ff7)

## Salary Conditions

* Employee status must be active.

    * If the salary calculation month is the same as the employee's joining month, the employee's salary will not be counted.

        * For Employee type: Intern
            - Employees will not receive any salary.
        * For Employee type: Provisional
            - Employees will receive only the basic salary.
        * For Employee type: Permanent
            - Employees will receive the basic salary.
            - Employees will receive a 5% transport allowance based on the basic salary.
            - A 10% provisional fund deduction from the basic salary will be applied.
            - Net salary = basic salary + transport allowance - provisional fund deduction.
