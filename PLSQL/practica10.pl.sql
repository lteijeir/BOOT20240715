--1
DECLARE
    v_today DATE := SYSDATE;
    v_tomorrow v_today%TYPE;
BEGIN
    v_tomorrow := v_today + 1;
    DBMS_OUTPUT.PUT_LINE( ' Hello WORLD ');
    DBMS_OUTPUT.PUT_LINE(' Today is: ' || v_today);
    DBMS_OUTPUT.PUT_LINE(' Tomorrow is  ' || v_tomorrow);
END;
CREATE PROCEDURE greet IS
    v_today DATE := SYSDATE;
    v_tomorrow v_today%TYPE;
BEGIN
    greet;
END;
