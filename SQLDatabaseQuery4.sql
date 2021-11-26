-----UC1 create database-----
create database payroll_service072;
use payroll_service072;
 -----UC2 Ability create a employee payroll table in the payroll service database-----
 CREATE TABLE employee_payroll (
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(200),
	salary float,
	startDate date
	);