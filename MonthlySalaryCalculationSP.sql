CREATE PROCEDURE MonthlySalary @date DATE
AS
BEGIN

    DECLARE @employee_id INT, @present_salary INT, @joining_date DATE, @employee_type VARCHAR(100), @salary_date DATE, @transport_allowance INT, @provisional_fund INT, @net_salary INT;
    SET @salary_date = DATEADD(DAY, -30, @date)

    DECLARE MonthlySalaryCursor SCROLL CURSOR FOR
        SELECT employee_id, joining_date, employee_type, salary
        FROM EMPLOYEE
        WHERE employee_status = 1;

    OPEN MonthlySalaryCursor;
    FETCH FIRST FROM MonthlySalaryCursor INTO @employee_id, @joining_date, @employee_type, @present_salary;
    
    WHILE @@FETCH_STATUS = 0
    BEGIN

        IF (@joining_date < @salary_date)
        BEGIN
            IF (@employee_type = 'Permanent')
            BEGIN
                SET @transport_allowance = @present_salary * 0.05;
                SET @provisional_fund = @present_salary * 0.10;
                SET @net_salary = @present_salary + @transport_allowance - @provisional_fund;

                INSERT INTO MONTHLY_SALARY(employee_id, present_salary, salary_month, transport_allowance, provisional_fund, net_salary)
                VALUES (
                    @employee_id,
                    @present_salary,
                    @date,
                    @transport_allowance,
                    @provisional_fund,
                    @net_salary
                );
            END

            ELSE IF (@employee_type = 'Provisional' OR @employee_type = 'Intern')
            BEGIN
                SET @transport_allowance = 0;
                SET @provisional_fund = 0;
                INSERT INTO MONTHLY_SALARY( employee_id,  present_salary, salary_month, transport_allowance, provisional_fund, net_salary)
                VALUES (
                    @employee_id,
                    @present_salary,
                    @date,
                    @transport_allowance,
                    @provisional_fund,
                    @present_salary
                );
            END
        END

        FETCH NEXT FROM MonthlySalaryCursor INTO @employee_id, @joining_date, @employee_type, @present_salary;
    END

    CLOSE MonthlySalaryCursor;
    DEALLOCATE MonthlySalaryCursor;
END;
