CREATE TABLE INCSAL(ID NUMBER PRIMARY KEY,NAME VARCHAR2(15),OLD_SAL NUMBER,NEW_SAL NUMBER);

DECLARE
CURSOR ECUR IS SELECT ID,NAME,BASIC FROM EMPLOYEE WHERE DEPTID=1;
NID EMPLOYEE.ID%TYPE;
NNAME EMPLOYEE.NAME%TYPE;
NSAL EMPLOYEE.BASIC%TYPE;
BEGIN
OPEN ECUR;
LOOP
FETCH ECUR INTO NID,NNAME,NSAL;
EXIT WHEN(ECUR%NOTFOUND);
UPDATE EMPLOYEE SET BASIC=BASIC+1000 WHERE ID=NID;
INSERT INTO INCSAL VALUES(NID,NNAME,NSAL,NSAL+1000);
END LOOP;
CLOSE ECUR;
 END;
  /
