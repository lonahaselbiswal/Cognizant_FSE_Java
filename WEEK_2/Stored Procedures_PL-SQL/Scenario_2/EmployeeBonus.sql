CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    dept_name IN VARCHAR2,
    bonus_pct IN NUMBER
) AS
    old_salary NUMBER;
    new_salary NUMBER;
BEGIN
    FOR emp IN (SELECT emp_id, name, salary FROM employees WHERE department = dept_name) LOOP
        old_salary := emp.salary;
        new_salary := emp.salary + (emp.salary * bonus_pct / 100);
        
        UPDATE employees
        SET salary = new_salary
        WHERE emp_id = emp.emp_id;
        
        DBMS_OUTPUT.PUT_LINE('Employee ' || emp.name || ': Old Salary = ' || old_salary || ', New Salary = ' || new_salary);
    END LOOP;
    COMMIT;
END;
