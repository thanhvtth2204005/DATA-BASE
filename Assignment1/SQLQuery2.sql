--INSERT Customers
insert into Customers 
	values (N'Nguyễn Văn An',N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội','098765421'),
	       (N'Nguyễn Thế An',N'số 4 Chùa Láng, Đống Đa, Hà Nội','090784672'),
		   (N'Phạm Mai Phương',N'10 Cầu Giấy, Hà Nội','096244821');
	select * from Customers;

--INSERT Orders
insert into Orders 
	values ('123','11/18/09','098765421'),
	       ('456','11/19/09','090784672'),
		   ('789','11/20/09','096244821');
	select * from Orders;


--INSERT Products

insert into Products 
	values ('1',N'Máy Tính T450',N'Máy nhập mới',N'Chiếc','1000'),
		   ('2',N'Điện Thoại Nokia5670',N'Điện thoại đang hot',N'Chiếc','200'),
		   ('3',N'Máy In Samsung450',N'Máy in đang ế',N'Chiếc','100');
	select * from Products;

--INSERT ProductOders
insert into ProductOrders
	values ('1','1','1000','123','1'),
		   ('2','2','200','456','2'),
		   ('3','1','100','789','3');
	select * from ProductOrders;

--INSERT Total
insert into Total
	values ('1000','1'),
		   ('400','2'),
		   ('100','3');
	select * from Total;






--4.a LIỆT KÊ DANH SÁCH KHÁCH HÀNG ĐÃ MUA HÀNG Ở CỬA HÀNG
		select Name from Customers;
--4.b LIỆT KÊ DANH SÁCH SẢN PHẨM CỦA CỬA HÀNG
		select Name from Products;
--4.c LIỆT KÊ DANH SÁCH CÁC ĐƠN ĐẶT HÀNG CỦA CỬA HÀNG
		select OrderId from Orders;
--5.a LIỆT KÊ DANH SÁCH KHÁCH HÀNG THEO THỨ TỰ ALPHABET
		select * from Customers order by Name asc; 
--5.b LIỆT KÊ DANH SÁCH SẢN PHẨM THEO THỨ TỰ GIẢM DẦN 
		select * from Products order by Price desc;
--5.c LIỆT KÊ DANH SÁCH SẢN PHẨM MÀ KHÁCH HÀNG NGUYỄN VĂN AN ĐÃ MUA
		select * from Products where ProductId in ( 
		select ProductId
		from ProductOrders as po where po.OrderId in (
		select OrderId from Orders where Phone in (select Phone from Customers where Name like N'Nguyễn Văn An')));
--6.a SỐ KHÁCH HÀNG ĐÃ MUA HÀNG TẠI CỬA HÀNG
		select count(*) as số_lượng from Customers where Phone in ( select Phone from Orders);
--6.b SỐ MẶT HÀNG MÀ CỬA HÀNG BÁN
		select count(*) as số_lượng_sản_phẩm from Products;
--6.c TỔNG TIỀN TỪNG ĐƠN HÀNG
		select sum(TotalAmount) as Tổng_Tiền from Total;