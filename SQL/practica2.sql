/
SELECT LAST_NAME, JOB_ID, SALARY as Sal
FROM EMPLOYEES;
/
-- 2.2
/
SELECT * FROM job_grades;
/
-- 2.3
/
SELECT employee_id, LAST_NAME, SALARY * 12  "Annual Salary"
FROM EMPLOYEES;
-- Errores :  la , después del last_name, escribir salary, en vez de x es *, y las comillas de "ANNUAL SALARY"
/
-- 2.4
/
DESCRIBE DEPARTMENTS;
SELECT * FROM DEPARTMENTS;
/
-- 2.5
/
DESCRIBE EMPLOYEES;
SELECT employee_id, LAST_NAME, JOB_ID, HIRE_DATE as "Start Date"
FROM EMPLOYEES;
/
-- 2.6
/
SELECT DISTINCT JOB_ID
FROM EMPLOYEES;
/
-- 2.7
/
SELECT employee_id as "Emp #", LAST_NAME as Employee , JOB_ID as Job, HIRE_DATE as "Hire Date"
FROM EMPLOYEES;
/
-- 2.8
/
SELECT LAST_NAME || ', ' || JOB_ID as " Employee and Title"
FROM EMPLOYEES;
/
-- 2.9
/
SELECT EMPLOYEE_ID || ', ' || FIRST_NAME || ', ' || LAST_NAME || ', ' || Email || ', ' ||phone_number || ', ' || HIRE_DATE || ', ' || JOB_ID || ', ' || SALARY || ', ' || COMMISSION_PCT || ', ' || Manager_id || ', ' || DEPARTMENT_ID as "THE_OUTPUT"
FROM EMPLOYEES;
/