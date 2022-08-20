Create table Customers(
	Name nvarchar(255) not null unique,
	CustomerAddress nvarchar(255), 
	Phone varchar(20) check(Phone like '09%[0-9]') primary key,
);

Create table Orders(
	OrderId int primary key ,
	OrderDate date not null,
	Phone varchar(20) foreign key references Customers(Phone) check(Phone like '09%[0-9]') 
);

Create table Products(
	ProductId varchar primary key,
	Content ntext,
	Name nvarchar(255) not null,
	Unit nvarchar(20),
	Price decimal(16,0) check(Price >=0) default 0
);
--alter table Products
--add Content ntext ;

Create table ProductOrders(
	ProductOrderId varchar primary key,
	Amout int,
	IntoMoney decimal(16,0) check(IntoMoney >=0) default 0,
	OrderId int foreign key references Orders(OrderId),
	ProductId varchar foreign key references Products(ProductId)
);

Create table Total(
	TotalAmount decimal(16,0) check(TotalAmount >=0) default 0,
	ProductOrderId varchar foreign key references ProductOrders(ProductOrderId)
);

drop table Total;
drop table ProductOrders;
drop table Orders;
drop table Customers;
drop table Products;