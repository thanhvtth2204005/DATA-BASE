create table Departments(
	DepartId int primary key identity(1,1),
	DepartName varchar(50) not null,
	Description varchar(100) not null
);


create table Employees (
	EmpCode char(6) primary key,
	FristName varchar(30) not null,
	LastName varchar(30) not null,
	Birthday smalldatetime not null,
	Gender Bit default 1,
	Adrees varchar(100),
	DepartID int foreign key references Departments (DepartId),
	Salary money
);

--drop table Departments
--drop table Employees

insert into Departments
	values('Marketing','Phong dich vu va truyen thong'),
		  ('CSKH', 'Ho tro nghe goi tu van khach hang'),
		  ('Ke Toan','Tinh toan luong va doanh thu cong ty');
	select * from Departments;
--delete from Departments;

insert into Employees	
	values ('ED1','Hoang','Quynh','1990/4/15','1','So 8 Ton That Thuyet','1','1000'),
			('ED2','Nguyen','Nam','1994/6/20','0','So 352 Quan Hoa','1','800'),
			('ED3','Phuong','Mai','1996/11/09','1','So 15 Cau Giay','1','500');
	select * from Employees;



--Increase the salary for all employees by 10%
  update  Employees
	set Salary = Salary+(Salary*10/100);
--Using ALTER TABLE statement to add constraint on Employee table to ensure that salary always greater than 0
  alter table Salary 
  add constraint N_Salary check (Salary>0);
 --Create an unique, none-clustered index named IX_DepartmentName on DepartName column on Department table
 create index IX_DepartmentName on Departments (DepartName);
--Create a view to display employee’s code, full name and department name of all employees
 create view infomation as 
	select EmpCode,FristName,LastName,DepartId from Employees;