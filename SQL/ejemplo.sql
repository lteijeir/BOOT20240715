Select * FROM JOBS;
/
DESCRIBE jobs
/
select DEPARTMENT_ID, DEPARTMENT_NAME
from Departments;
/
SELECT LAST_NAME, LAST_NAME || q'[ algo's ]'  || FIRST_NAME as "Nombre Completo", SALARY, 12*SALARY "Salario Anual"
FROM EMPLOYEES;
/
SELECT LAST_NAME, JOB_ID, SALARY, COMMISSION_PCT, SALARY * NVL (COMMISSION_PCT,0) /* NVL : NULL VALUE */
FROM EMPLOYEES;
/
SELECT DISTINCT DEPARTMENT_ID
FROM EMPLOYEES;
/
DESCRIBE EMPLOYEES

-- PRACTICAS 3
/
SELECT Salary, FIRST_NAME || ' ' || LAST_NAME nombre
FROM EMPLOYEES 
WHERE SALARY BETWEEN 2500 AND 3500
order by 2;
/
SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME BETWEEN 'King' AND 'Whalen'
/
SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME = 'King'
/
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'S%';
/
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%a%';
/
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE LAST_NAME like '%' ESCAPE '^';
/
SELECT LAST_NAME, Manager_id
FROM EMPLOYEES
WHERE MANAGER_ID = null;
/
SELECT * FROM EMPLOYEES
WHERE (MANAGER_ID is null and COMMISSION_PCT is null) or (MANAGER_ID = COMMISSION_PCT);
/
SELECT LAST_NAME, DEPARTMENT_ID, Salary
FROM EMPLOYEES
WHERE(DEPARTMENT_ID = 60 OR DEPARTMENT_ID = 80) AND SALARY>10000;
/
SELECT * FROM EMPLOYEES
order by EMPLOYEE_ID
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;
/
set verify ON
SELECT &&puesto puesto, EMPLOYEES.*
FROM EMPLOYEES
WHERE JOB_ID = &&puesto;

UNDEFINE &&puesto

-- PRÁCTICAS 4
/
SELECT LAST_NAME, HIRE_DATE, ADD_MONTHS(HIRE_DATE, 5 *12)
FROM EMPLOYEES;
/
SELECT SYSDATE, SYSDATE - 7, SYSDATE -  TO_DATE ('01-JUN-2024')
from dual;
/
SELECT EMPLOYEE_ID, SYSDATE -HIRE_DATE "Dias en la empresa"
FROM EMPLOYEES;
/
SELECT LAST_NAME, SALARY,
(CASE
    WHEN SALARY >20000 THEN 'Good'
    WHEN SALARY > 10000 THEN 'Medium'
    WHEN SALARY > 5000 THEN 'low'
    WHEN SALARY IS NULL THEN 'SIN SALARIO'
    ELSE 'Excellent'
END) qualified_salary
FROM EMPLOYEES;
/
SELECT *
FROM REGIONS, COUNTRIES
WHERE REGIONS.REGION_ID = COUNTRIES.REGION_ID OR COUNTRIES.REGION_ID IS NULL;
/
SELECT COUNTRY_ID, COUNTRY_NAME, REGION_NAME
FROM REGIONS R NATURAL JOIN COUNTRIES C
WHERE R.REGION_NAME IN('Europe', 'Asia');
/
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME NOMBRE, C.COUNTRY_NAME
FROM REGIONS R
    INNER JOIN COUNTRIES C ON R.REGION_ID = C.REGION_ID
    INNER JOIN LOCATIONS L ON C.COUNTRY_ID = L.COUNTRY_ID
    INNER JOIN DEPARTMENTS D ON D.LOCATION_ID = L.LOCATION_ID
    INNER JOIN EMPLOYEES E ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
WHERE R.REGION_NAME IN ('Europe');