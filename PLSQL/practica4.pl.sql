--1
-- a: 2
-- b: Western Europe
-- c: 601
-- d: Product 10012 is in stock
-- e: no se puede ver
-- 2
-- a: 201
-- b: Unisports
-- c: GOOD
-- d: Womansport
-- e: Null
-- f: EXCELLENT
--3
DECLARE 
   v_basic_percent NUMBER:=45; 
   v_pf_percent NUMBER:=12; 
   v_fname VARCHAR2(15); 
   v_emp_sal NUMBER(10);
SELECT first_name, salary INTO v_fname, v_emp_sal 
FROM employees WHERE employee_id=110;