show databases;

CREATE TABLE Customer (
    CUSTID int NOT NULL AUTO_INCREMENT,
    CUST_FIRSTNAME varchar(255) NOT NULL,
    CUST_LASTNAME varchar(255),
    AGE varchar(20) NOT NULL,
    EMAILID varchar(100) NOT NULL UNIQUE,
    PHONE varchar(11) NOT NULL UNIQUE,
    PASSWORD varchar(100) NOT NULL,
    STATE varchar(100) NOT NULL ,
    PIN_CODE int NOT NULL,
    ADDRESS varchar(200) NOT NULL,
    CREATED_ON TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (CUSTID)
); 
commit;


desc Customer; 

drop table Customer;

select * from Customer where emailid='KMR.SANDEEP@GMAIL.COM';

select * from Customer;

DELETE * FROM Customer;

insert into Customer(CUST_FIRSTNAME,CUST_LASTNAME,AGE,EMAILID,PHONE) values ('sandeep','kumar',13,'kmr@gmail.com',7007788055);