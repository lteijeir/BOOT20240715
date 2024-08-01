--1
CREATE OR REPLACE PROCEDURE check_salary (p_the_job VARCHAR2, p_the_salary NUMBER) IS
    v_minsal jobs.min_salary%type;
    v_maxsal jobs.max_salary%type;
BEGIN
    SELECT min_salary, max_salary INTO v_minsal, v_maxsal
    FROM jobs
    WHERE job_id = UPPER(p_the_job);
    IF p_the_salary NOT BETWEEN v_minsal AND v_maxsal THEN
        RAISE_APPLICATION_ERROR(-20100,
        'Invalid salary $' ||p_the_salary ||'. '||
        'Salaries for job '|| p_the_job ||
        ' must be between $'|| v_minsal ||' and $' || v_maxsal);
    END IF;
END;
/
SHOW ERRORS
/
CREATE OR REPLACE TRIGGER check_salary_trg
BEFORE INSERT OR UPDATE OF job_id, salary
ON employees
FOR EACH ROW
BEGIN
    check_salary(:new.job_id, :new.salary);
END;
/
SHOW ERRORS
/
UPDATE EMPLOYEES
    SET SALARY = 2800
WHERE EMPLOYEE_ID = 115;
UPDATE EMPLOYEES
    SET JOB_ID ='HP_REP'
WHERE EMPLOYEE_ID = 115;
/
CREATE OR REPLACE TRIGGER check_salary_trg
BEFORE INSERT OR UPDATE OF JOB_ID, SALARY ON EMPLOYEES FOR EACH ROW
WHEN(NEW.JOB_ID <> NVL(OLD.JOB_ID,'?') OR NEW.SALARY <> NVL(OLD.SALARY,0))
BEGIN
    CHECK_SALARY(:NEW.JOB_ID,:NEW.SALARY);
END;
/
SHOW ERRORS
/
BEGIN
    emp_pkg.add_employee('Eleanor', 'Beh', 'EBEH',
    p_job => 'IT_PROG', p_sal => 5000);
END;
