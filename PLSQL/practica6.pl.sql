--1
BEGIN
FOR i in 1..10 LOOP 
    IF i = 6 or i = 8 THEN null;
    ELSE
        INSERT INTO MESSAGES(results)
        VALUES(i);
    END IF;
END LOOP;
COMMIT;
END;
/
SELECT * FROM MESSAGES;
/
--2

DECLARE
    v_empno emp.EMPLOYEE_ID%TYPE := 176;
    v_asterisk emp.stars%TYPE := NULL;
    v_sal emp.SALARY%TYPE;
BEGIN
    SELECT NVL(ROUND(SALARY/1000), 0) INTO v_sal
    FROM emp WHERE EMPLOYEE_ID = v_empno;

    FOR i in 1..v_sal
        LOOP
        v_asterisk := v_asterik || '*';
    END LOOP;
    UPDATE emp SET stars = v_asterisk
    WHERE EMPLOYEE_ID = v_empno;
    COMMIT;
END;
/
SELECT EMPLOYEE_ID, SALARY, stars
FROM emp WHERE EMPLOYEE_ID = 176;
