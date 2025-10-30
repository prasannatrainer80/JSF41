Drop Database if exists JFS41Project;

create database JFS41Project;

use JFS41Project;

Create Table Department
(
   Deptcode varchar(30),
   DeptName varchar(30),
   DeptHead varchar(30),
   constraint pk_department_deptcode primary key(deptCode)
);

Insert into Department(DeptCode,DeptName,DeptHead)
values('D001','Java','Kishore'),
      ('D002','Dotnet','Anand'),
      ('D003','Admin','Murari'),
      ('D004','Testing','Shanthi'),
      ('D005','Accounts','Krishna');

create table Employ
(
   EmpId varchar(30),
   EmpName varchar(30),
   Doj Date,
   Salary numeric(9,2),
   Dob Date,
   DeptCode varchar(30),
   constraint pk_employ_empId primary key(empId),
   constraint fk_employ_deptCode foreign key(DeptCode) 
	References Department(DeptCode)
);


