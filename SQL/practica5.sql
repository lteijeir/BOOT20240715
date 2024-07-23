-- 5.1
SELECT CONCAT (LAST_NAME, ' earns ', SALARY, ' monthly but wants ', SALARY *3) AS "Dreams Salaries"
FROM EMPLOYEES;
/
--5.2
SELECT LAST_NAME, HIRE_DATE, TO_CHAR(NEXT_DAY(ADD_MONTHS(HIRE_DATE,6),'MONDAY'),'fmDay, "the" DdSPTH "of" Month, YYYY')
FROM EMPLOYEES;
/
--5.3
SELECT LAST_NAME, COMMISSION_PCT,
(CASE 
    WHEN COMMISSION_PCT IS NULL THEN 'No comission'
    ELSE TO_CHAR(COMMISSION_PCT,'0.00')
END)
FROM EMPLOYEES;
/
--5.4
SELECT JOB_ID,
CASE JOB_ID
    WHEN  'AD_PRES' THEN 'A'
    WHEN 'ST_MAN' THEN 'B'
    WHEN 'IT_PROG' THEN 'C'
    WHEN 'SA_REP' THEN 'D'
    WHEN 'ST_CLERK' THEN 'E'
ELSE 'None of the above' END 
FROM EMPLOYEES;
/
--5.5
SELECT JOB_ID,
(CASE
    WHEN JOB_ID = 'AD_PRES' THEN 'A'
    WHEN JOB_ID = 'ST_MAN' THEN 'B'
    WHEN JOB_ID = 'IT_PROG' THEN 'C'
    WHEN JOB_ID = 'SA_REP' THEN 'D'
    WHEN JOB_ID = 'ST_CLERK' THEN 'E'
    ELSE 'None of the above'
END)
FROM EMPLOYEES;
/
--5.6
SELECT JOB_ID,
    DECODE (JOB_ID, 'AD_PRES', 'A',
                    'ST_MAN', 'B',
                    'IT_PROG', 'C',
                    'SA_REP', 'D',
                    'ST_CLERK', 'E',
                    '0')
FROM EMPLOYEES;
