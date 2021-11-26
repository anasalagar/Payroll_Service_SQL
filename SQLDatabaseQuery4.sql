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
----UC3 ability to create employee payroll data service database-----
INSERT INTO employee_payroll (name,salary,startDate) VALUES ('MSD',9999999.99,'2017-07-07'),('ANAS',1111111.11,'2021-01-15');
----UC4  Ability to retrieve all the employee payroll data-----
select * from employee_payroll;

---UC5 : Ability to retrieve salary data for particular employee----
select id,name from employee_payroll where name = 'ANAS';
select * from employee_payroll where startDate between cast('2020-01-02' as date) and getdate();

-----UC6 : Ability to add gender to table and update table-----
select * from employee_payroll;
ALTER TABLE employee_payroll ADD Gender char(1);
update employee_payroll set Gender='M';
INSERT INTO employee_payroll VALUES ('PRIYA',22222.22,'2021-05-31','F'),('SHRADHA',33333.33,'2015-01-01','F');
update employee_payroll set startDate='2001-04-04' where id=4;
update employee_payroll set startDate='2007-07-07' where id=1 and name='MSD';

---UC7 : Ability to find sum,average,max, min and number of male and female employees----
select * from employee_payroll;
select sum(salary) as TotalSalary from employee_payroll;
select max(salary) as Maximum from employee_payroll;
select min(salary) as Minimum from employee_payroll;
select avg(salary) as AverageSalary from employee_payroll;
select count(salary) as NumOfEmployees from employee_payroll;
select count(salary) as NumberOfEmployee,Gender from employee_payroll group by Gender;

---UC8 : Ability to extend data to store information like employee phone, address and department----
ALTER TABLE employee_payroll ADD Phone bigint;
select * from employee_payroll;
ALTER TABLE employee_payroll ADD Address varchar(250) null default 'Sangli';
ALTER TABLE employee_payroll ADD Department varchar(250) not null default 'RND';