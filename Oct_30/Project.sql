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

Insert into Employ(EmpId,EmpName,Doj,Salary,Dob,DeptCode)
values('E001','Ramya','2024-10-10',48823,'2005-10-10','D001'),
('E002','Mukesh','2024-02-24',88423,'2004-11-22','D002'),
('E003','Narendar','2024-10-10',78233,'2002-11-11','D003'),
('E004','Sandhan','2024-10-10',66222,'2003-12-12','D001');

Create Table Project
(
    Projcode varchar(30),
    EmpId varchar(30),
    hours INT,
    constraint fk_project_empId foreign key(EmpId) 
	References Employ(empId),
    constraint pk_project_c primary key(ProjCode,EmpId)
);

Insert into Project(ProjCode,EmpId,Hours) values('P001','E001',884),
('P002','E001',8823),('P001','E002',234);



