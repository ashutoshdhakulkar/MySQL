use excelr01;

create table ola
(
customer_name varchar(50),
contact_number bigint,
pick_up_location varchar(50),
driver_name varchar(50),
payment_mode varchar(100),
otp int,
destination varchar(50),
fare_price int
);

desc ola;

insert into ola
values
("Bhushan",1234567891,"Baner","Om","Online",12344,"Shivaji Nagar",500);

select * from ola;

update ola
set payment_mode="cash"
where driver_name="om";

select * from ola;

update ola
set driver_name="Ashutosh",
fare_price = 1000
where otp = 12344;

select * from ola;

select * from amazon;

delete from amazon
where product_description = "BEST PRODUCT";

select * from amazon;

delete from amazon
where order_id = 1;

select * from amazon;

insert INTO AMAZON 
VALUES
(2,'MOBILE',20000,1,'PP'),
(3,'BOTTLE',400,5,'HOTCOLD');

select * FROM AMAZON;

DELETE FROM AMAZON
WHERE QUANTITY = 5;

SELECT * FROM AMAZON;

insert INTO AMAZON 
VALUES
(2,'MOBILE',20000,1,'PP'),
(3,'BOTTLE',400,5,'HOTCOLD');
insert INTO AMAZON 
VALUES
(2,'MOBILE',20000,1,'PP'),
(3,'BOTTLE',400,5,'HOTCOLD');
insert INTO AMAZON 
VALUES
(2,'MOBILE',20000,1,'PP'),
(3,'BOTTLE',400,5,'HOTCOLD');

select * from amazon;

truncate table amazon;

select * from amazon;


create table customer
(
CID INT PRIMARY KEY,
CNAME VARCHAR(50) NOT NULL,
EMAIL_ID VARCHAR(50) UNIQUE NOT NULL,
PHNO BIGINT CHECK(LENGTH(PHNO)=10) UNIQUE NOT NULL
);

SELECT * FROM CUSTOMER;
INSERT INTO CUSTOMER
VALUES
(1,'ARUN',"ARUN@GMAIL.COM",9878896987);

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER
VALUES
(2,"BHUSHAN","B@GMAIL.COM",1234526535);
SELECT * FROM CUSTOMER;

CREATE TABLE PRODUCT
(
PID INT PRIMARY KEY,
PNAME VARCHAR(50) NOT NULL,
PRICE DECIMAL(10,2),
CID INT,
constraint CID_FK FOREIGN KEY(CID) references customer(CID)
);

DROP TABLE CUSTOMER;
use excelr01;






















