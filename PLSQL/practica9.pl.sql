--1
DECLARE
    v_ename EMPLOYEES.LAST_NAME%TYPE;
    v_emp_sal EMPLOYEES.SALARY%TYPE := 6000;
BEGIN
    SELECT LAST_NAME
    INTO v_ename
    FROM EMPLOYEES
    WHERE SALARY = v_emp_sal;
    INSERT INTO MESSAGES (RESULTS)
    VALUES (v_ename || ' - ' || v_emp_sal);
    EXCEPTION
        WHEN no_data_found THEN
            INSERT INTO MESSAGES(RESULTS)
            VALUES ('No employees whit a salary of ' || TO_CHAR(v_emp_sal));
        WHEN too_many_rows THEN
            INSERT INTO MESSAGES(RESULTS)
            VALUES ('More than one employee with a salary of ' || TO_CHAR(v_emp_sal));
        WHEN OTHERS THEN
            INSERT INTO messages (results) 
            VALUES ('Some other error occurred.');
END;
/ 
SELECT * FROM MESSAGES;
/
--2
DECLARE
    e_childrecord_exists EXCEPTION;
    PRAGMA EXCEPTION_INIT(e_childrecord_exists, -02292);
BEGIN
    DBMS_OUTPUT.PUT_LINE(' Deleting department 40.......');
    DELETE FROM DEPARTMENTS WHERE DEPARTMENT_ID = 40;
    EXCEPTION 
        WHEN e_childrecord_exists THEN 
        DBMS_OUTPUT.PUT_LINE(' Cannot delete this department. There are employees in this department (child records exist.) '); 
END;