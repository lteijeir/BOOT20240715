--1
DECLARE
    v_max_deptno NUMBER;
BEGIN
    SELECT MAX (DEPARTMENT_ID) INTO v_max_deptno
    FROM DEPARTMENTS;
    DBMS_OUTPUT.PUT_LINE('El id de departamento mayor es: ' || v_max_deptno);
END;
/
--2
DECLARE
    v_max_deptno NUMBER;
    v_dept_name departments.DEPARTMENT_NAME%TYPE := 'Education';
    v_dept_id NUMBER;
BEGIN
    SELECT MAX (DEPARTMENT_ID) INTO v_max_deptno
    FROM DEPARTMENTS;
    v_dept_id := 10 + v_max_deptno;
    INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID)  
    VALUES (v_dept_id, v_dept_name, NULL);
    DBMS_OUTPUT.PUT_LINE ('SQL%ROWCOUNT gives ' || SQL%ROWCOUNT);
    DBMS_OUTPUT.PUT_LINE('El id de departamento mayor es: ' || v_max_deptno);
END;
/
SELECT * FROM  departments  WHERE  department_id= 290;
/
--3
DECLARE
    v_max_deptno NUMBER;
    v_dept_name departments.DEPARTMENT_NAME%TYPE := 'Education';
    v_dept_id NUMBER;
BEGIN
    BEGIN
        UPDATE DEPARTMENTS	SET LOCATION_ID = 3000
        WHERE DEPARTMENT_ID = 280;
    END;
    SELECT MAX (DEPARTMENT_ID) INTO v_max_deptno
    FROM DEPARTMENTS;
    v_dept_id := 10 + v_max_deptno;
    INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID)  
    VALUES (v_dept_id, v_dept_name, NULL);
    DBMS_OUTPUT.PUT_LINE ('SQL%ROWCOUNT gives ' || SQL%ROWCOUNT);
    DBMS_OUTPUT.PUT_LINE('El id de departamento mayor es: ' || v_max_deptno);
END;