CREATE TABLE EMP (
	empNo 	 number(4),
	fname 	 varchar2(1024),
	lname 	 varchar2(1024),
	address  varchar2(1024),
	sex	 varchar2(1),
	salary 	 number(12, 2) CHECK (salary > 12000),
	position varchar2(1024),
	deptNo   number(2) NOT NULL
);
