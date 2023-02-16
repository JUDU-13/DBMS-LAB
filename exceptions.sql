-- 5. PL/SQL PROGRAM TO SHOW DIVIDE BY ZERO EXCEPTION.

DECLARE
NUM_A NUMBER := 6;
NUM_B NUMBER := 0;
NUM_C NUMBER;
BEGIN
NUM_C := NUM_A / NUM_B;
DBMS_OUTPUT.PUT_LINE('ANSWER: ' || NUM_C);
EXCEPTION
WHEN ZERO_DIVIDE
THEN
DBMS_OUTPUT.PUT_LINE(' VALUE OF A: ' || NUM_A || ', B: ' || NUM_B);
DBMS_OUTPUT.PUT_LINE('TRYING TO DIVIDE BY ZERO (A/B)');
END;
/

-- OUTPUT:

-- VALUE OF A: 6, B: 0
-- TRYING TO DIVIDE BY ZERO (A/B)

-- ----------------------------------------------------------------- --


-- 6. PL/SQL PROGRAM TO SHOW NO DATA FOUND EXCEPTION


DECLARE
TEMP VARCHAR(20);
BEGIN
SELECT NAME INTO TEMP FROM EMPLOYEE WHERE ID=105;
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('ERROR');
DBMS_OUTPUT.PUT_LINE('THERE IS NO SUCH DATA');
END;
/

-- OUTPUT:

-- ERROR
-- THERE IS NO SUCH DATA