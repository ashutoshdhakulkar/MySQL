USE EXCELR01;

CALL SHOW_EMP_DETAILS(); # DROPPED THIS#
CALL EMP_DETAILS();
CALL POSITIVE_NEG(55);
CALL POSITIVE_NEG(-42);
CALL POSITIVE_NEG(0);

CALL DETAILS(20);
CALL DETAILS(30);

CALL MANAGER('MANAGER');
CALL MANAGER_('JONES');
CALL LOCATION("NEW YORK");
CALL LOCATION("DALLAS");

CALL EMPLOYEE(@RECORDS);
SELECT @RECORDS;



