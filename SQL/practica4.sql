-- 4.1
SELECT SYSDATE "Date", TO_CHAR(SYSDATE, 'DD-MON-RR')
FROM dual;
/
--4-2
SELECT EMPLOYEE_ID, LAST_NAME, SALARY, ROUND (SALARY * 1.155, 0) AS "Nuevo Salario"
FROM EMPLOYEES;
/
--4.4
SELECT EMPLOYEE_ID, LAST_NAME, SALARY, ROUND (SALARY * 1.155, 2) AS "Nuevo Salario", ROUND (SALARY *1.155 - SALARY, 2) AS "Incremento" 
FROM EMPLOYEES;
/
--4.5
-- a
SELECT LAST_NAME, LENGTH (LAST_NAME)
FROM EMPLOYEES
WHERE LAST_NAME LIKE 'M%' OR LAST_NAME LIKE 'A%';

--b
/
--C
SELECT INITCAP(LAST_NAME) "Name", LENGTH (LAST_NAME)
FROM EMPLOYEES
WHERE UPPER(LAST_NAME) LIKE UPPER ('%start_letter%')
ORDER BY LAST_NAME;

/--4.6
SELECT LAST_NAME, MONTHS_BETWEEN(SYSDATE, HIRE_DATE) AS "MESES TRABAJADOS"
FROM EMPLOYEES;
/
--4.7
SELECT LAST_NAME, LPAD(SALARY, 15, '$')
FROM EMPLOYEES;
/
--4.8
SELECT LAST_NAME, RPAD('*', FLOOR(SALARY / 1000), '*') 
FROM EMPLOYEES
ORDER BY SALARY Desc;
/
--4.9
SELECT LAST_NAME, TRUNC((SYSDATE-HIRE_DATE)/7) AS WEEKS
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 90;

