-- Experiment 7

-- Aim: Creation of Procedures, Triggers and Functions.

-- PROCEDURE


-- ---------------------------------------------------------------------------------------------------- --

SET SERVEROUTPUT ON;

-- Write a simple procedure to find the minimum of two numbers

DECLARE
A NUMBER;
B NUMBER;
C NUMBER;
PROCEDURE FINDMIN(X IN NUMBER, Y IN NUMBER,Z OUT NUMBER) IS
BEGIN
IF X<Y THEN
Z:=X;
ELSE
Z:=Y;
END IF;
END;
BEGIN
A:=&A;
B:=&B;
FINDMIN(A,B,C);
DBMS_OUTPUT.PUT_LINE('MINIMUM OF A:'||A||'AND B:'||B||'IS:'||C);
END;
/

-- OUTPUT:

-- Enter value for a: 10
-- old  14: A:=&A;
-- new  14: A:=10;
-- Enter value for b: 43
-- old  15: B:=&B;
-- new  15: B:=43;
-- MINIMUM OF A:10 AND B:43 IS:10

-- PL/SQL procedure successfully completed.

-- ---------------------------------------------------------------------------------------------------- --

-- Write a procedure that passes employee id and returns the employee’s full
-- name from the employee table to the calling program.Also write the
-- anonymous block with the procedure call.

CREATE OR REPLACE PROCEDURE SEARCH_EMP(EMP_ID IN NUMBER,EMP_NAME OUT VARCHAR2) IS
BEGIN
SELECT NAME INTO EMP_NAME FROM EMPLOYEE WHERE EMP_ID=ID;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID'||EMP_ID||'DOES NOT EXIST');
END;
/

-- OUTPUT: Procedure created.


-- ---------------------------------------------------------------------------------------------------- --


-- ---------------------------------------------------------------------------------------------------- --


DECLARE
V_NAME EMPLOYEE.NAME%TYPE;
V_ID EMPLOYEE.ID%TYPE:=&EMP_ID;
BEGIN
SEARCH_EMP(V_ID,V_NAME);
IF V_NAME IS NOT NULL THEN
DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID:'||V_ID);
DBMS_OUTPUT.PUT_LINE('NAME:'||V_NAME);
END IF;
END;
/


-- ---------------------------------------------------------------------------------------------------- --


-- OUTPUT:

-- Enter value for emp_id: 101
-- old   3: V_ID EMPLOYEE.ID%TYPE:=&EMP_ID;
-- new   3: V_ID EMPLOYEE.ID%TYPE:=101;
-- EMPLOYEE ID:101
-- NAME:Ram

-- PL/SQL procedure successfully completed.

-- ---------------------------------------------------------------------------------------------------- --
-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX --
-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX --
-- ---------------------------------------------------------------------------------------------------- --


-- FUNCTIONS


-- Write a function that returns the factorial of a number.

CREATE OR REPLACE FUNCTION FACT(N IN NUMBER)
RETURN NUMBER
IS
F NUMBER;
BEGIN
IF N=0 THEN
F:=1;
ELSE
F:=N*FACT(N-1);
END IF;
RETURN F;
END;
/

-- OUTPUT: Function created.


-- ---------------------------------------------------------------------------------------------------- --
