show databases;

CREATE TABLE Cutomer (
    CUSTID int NOT NULL AUTO_INCREMENT,
    CUST_FIRSTNAME varchar(255) NOT NULL,
    CUST_LASTNAME varchar(255),
    AGE int(3) NOT NULL,
    EMAILID varchar(100) NOT NULL,
    PHONE int(10) NOT NULL,
    PRIMARY KEY (CUSTID)
); 