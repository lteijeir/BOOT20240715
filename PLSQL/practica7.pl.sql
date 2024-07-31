--1
DECLARE
    v_countryid varchar2(20) := 'CA';
    v_country_record countries%ROWTYPE;
BEGIN
    SELECT *
    INTO v_country_record
    FROM countries
    WHERE country_id = UPPER(v_countryid);
    DBMS_OUTPUT.PUT_LINE('Country id: ' || v_country_record.country_id || ' Country Name: ' || v_country_record.country_name || ' Region: ' || v_country_record.region_id);
END;
/
--2
DECLARE
    TYPE dept_table_type is table of departments.DEPARTMENT_NAME%TYPE
    INDEX BY PLS_INTEGER;
    my_dept_table dept_table_type;
    f_loop_count NUMBER(2) := 10;
    v_deptno NUMBER (4) := 0;
BEGIN
    FOR i IN 1..f_loop_count
    LOOP
        v_deptno := v_deptno+10;
    SELECT DEPARTMENT_NAME
    INTO my_dept_table(i)
    FROM DEPARTMENTS
    WHERE DEPARTMENT_ID = v_deptno;
    END LOOP;
    FOR i IN 1..f_loop_count
    LOOP
        DBMS_OUTPUT.PUT_LINE(my_dept_table(i));
    END LOOP;
END;
/
--3
DECLARE
    TYPE dept_table_type is table of departments%ROWTYPE
    INDEX BY PLS_INTEGER;
    my_dept_table dept_table_type;
    f_loop_count NUMBER(2) := 10;
    v_deptno NUMBER (4) := 0;
BEGIN
    FOR i IN 1..f_loop_count
    LOOP
        v_deptno := v_deptno+10;
    SELECT *
    INTO my_dept_table(i)
    FROM DEPARTMENTS
    WHERE DEPARTMENT_ID = v_deptno;
    END LOOP;
    FOR i IN 1..f_loop_count
    LOOP
        DBMS_OUTPUT.PUT_LINE('Department Number: ' || my_dept_table(i).department_id || 
        ' Department Name: ' || my_dept_table(i).department_name || 
        ' Manager Id: ' || my_dept_table(i).manager_id ||
        ' Location Id: ' || my_dept_table(i).location_id);
    END LOOP;
END;
