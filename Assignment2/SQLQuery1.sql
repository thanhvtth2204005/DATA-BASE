Create table Companys(
	CompanyId int primary key ,
	Name nvarchar(50) not null unique,
	Address nvarchar(255) not null,
	Phone varchar(20),
);


Create table Products(
	ProductId int primary key identity(1,1),
	Name nvarchar(50) not null unique,
	Content ntext not null,
	Unit nvarchar(20) not null,
	Price decimal(16,0) not null default 0,
	Amount int not null default 0,
	CompanyId int foreign key references Companys(CompanyId),
);