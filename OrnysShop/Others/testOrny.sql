DROP TABLE t_customertype;
DROP TABLE t_customer;

CREATE TABLE t_customertype
(
typeid NUMBER(1) PRIMARY KEY,
typename VARCHAR2(10) NOT NULL
);

CREATE TABLE t_customer
(
cid VARCHAR2(23) PRIMARY KEY,
fname VARCHAR2(20) NOT NULL, 
lname VARCHAR2(20) NOT NULL,
sex CHAR(1) NOT NULL,
dob DATE DEFAULT SYSDATE NOT NULL,
type NUMBER(1) CONSTRAINT fk_type REFERENCES t_customertype(typeid)
);