use excelr01;
CALL EXP1;
CALL EXP2;

CREATE TABLE PAYMENTS
(
CLIENT_ID INT,
AMOUNT INT NOT NULL
);
DROP TABLE PAYMENTS;

CREATE TABLE FRAUD
(
CLIENT_ID INT,
AMOUNT INT,
MSG VARCHAR(100),
TOT DATETIME      # TIME OF FRAUD TRANSACRION #

);



