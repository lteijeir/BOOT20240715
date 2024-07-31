
--1
-- a: valid
-- b: valid
-- c: invalid
-- d: invalid
-- e: valid
-- f: invalid
-- g: valid
-- h: valid
/
--2
-- a: valird
-- b: invalid
-- c: invalid
-- d: valid
/
--3
DECLARE
    v_fname VARCHAR2(20);
    v_lname VARCHAR2(15) DEFAULT 'fernandez';
BEGIN
    DBMS_OUTPUT.PUT_LINE(v_fname || ' ' ||v_lname);
END;
/
--4
DECLARE
    v_today DATE:=SYSDATE;
    v_tomorrow v_today%TYPE;
BEGIN 
    v_tomorrow := v_today +1;
    DBMS_OUTPUT.PUT_LINE('Hola mundo');
    DBMS_OUTPUT.PUT_LINE('Hoy es ' || v_today);
    DBMS_OUTPUT.PUT_LINE('Mañana es ' || v_tomorrow);
END;
/
--5
DECLARE
    v_today DATE:=SYSDATE;
    v_tomorrow v_today%TYPE;
    b_basic_percet NUMBER;
    b_pf_percent NUMBER;
BEGIN 
    v_tomorrow := v_today +1;
    DBMS_OUTPUT.PUT_LINE('Hola mundo');
    DBMS_OUTPUT.PUT_LINE('Hoy es ' || v_today);
    DBMS_OUTPUT.PUT_LINE('Mañana es ' || v_tomorrow);
    b_basic_percet :=45;
    b_pf_percent .0 12;
    DBMS_OUTPUT.PUT_LINE(b_basic_percet);
    DBMS_OUTPUT.PUT_LINE(b_pf_percet);
END;

/
