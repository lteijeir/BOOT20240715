VARIABLE emp_id NUMBER;

DECLARE
    v_nombre VARCHAR2(100);
    V_LAST_NAME EMPLOYEES.FIRST_NAME%TYPE;
    v_cuantos NUMBER;
    total NUMBER;
BEGIN
    --DBMS_OUTPUT.PUT_LINE('Hola ' || v_nombre);
    --v_nombre := 'tu';
    SELECT COUNT(*)
    into v_cuantos
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 1203;
    DBMS_OUTPUT.PUT_LINE('Cuantos: ' || v_cuantos);
    v_cuantos := 1.2;
    SELECT FIRST_NAME, LAST_NAME || V_LAST_NAME, SALARY * v_cuantos
    into v_nombre, V_LAST_NAME, total
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = :emp_id;
    DBMS_OUTPUT.PUT_LINE('Hola ' || nvl(v_nombre, '(anonimo)') || ' tu salario es ' || total);
END;