--3.1
SELECT LAST_NAME, Salary 
FROM EMPLOYEES
WHERE SALARY > 12000;

-- 3.2
/
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 176;
/
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 12000;
/
SELECT LAST_NAME, JOB_ID, HIRE_DATE
FROM EMPLOYEES
WHERE (LAST_NAME = 'Matos') or LAST_NAME = 'Taylor'
order by HIRE_DATE ASC;

-- 3.5
/
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID in (20,50)
order by LAST_NAME;
-- 3.6
/
SELECT LAST_NAME as Employee, SALARY as "Month Salary"
FROM EMPLOYEES
WHERE (DEPARTMENT_ID = 20 or DEPARTMENT_ID = 50) AND (SALARY BETWEEN 5000 AND 12000);
--3.7
/
SELECT LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE '01-JAN-06' <= HIRE_DATE AND HIRE_DATE < '01-JAN-07';
--3.8
/
SELECT LAST_NAME, JOB_ID
FROM EMPLOYEES
WHERE MANAGER_ID is null;
--3.9
/
SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
ORDER BY 2 DESC, 3 DESC;
--3.10
/
DEFINE employee_salary = 12000
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > &employee_salary;
--3.11
SELECT EMPLOYEE_ID,LAST_NAME, SALARY, DEPARTMENT_ID 
FROM EMPLOYEES
WHERE MANAGER_ID = &mgr_num
ORDER BY &order_col;
/
--3.12
SELECT LAST_NAME
FROM EMPLOYEESWHERE LAST_NAME LIKE '__a%';
/
--3.13
SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%a%' AND LAST_NAME LIKE '%e%'
/
--3.14
SELECT LAST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE JOB_ID IN ('SA_REP', 'ST_CLERK') AND SALARY NOT IN (2500, 3500, 7000);
/
--3.15
SELECT LAST_NAME "Employee", SALARY "Monthly Salary", COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT = .20;
