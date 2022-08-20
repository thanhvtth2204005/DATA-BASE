-- INSERT COMPANYS
insert into Companys 
	values ('123','Asus','USA','983232'),
		   ('456','ROG','Canada','365753'),
		   ('789','DELL','JAPAN','9785463');
	select * from Companys;



-- INSERT PRODUCTS
insert into Products(Name,Content,Unit,Price,Amount,CompanyId)
	values (N'Máy Tính T450',N'Máy nhập cũ',N'Chiếc','1000','10','123'),
		   (N'Điện Thoại Nokia5670',N'Điện thoại đang hot',N'Chiếc','200','200','456'),
		   (N'Máy In Samsung 450',N'Máy in đang loại bình',N'Chiếc','100','10','789');
	select * from Products;



--4.a HIỂN THỊ TẤT CẢ CÁC HÃNG SẢN XUẤT
	select Name as Hang_sx from Companys;
--4.b HIỂN THỊ TẤT CẢ CÁC SẢN PHẨM
	select Name as San_Pham from Products;
--5.a LIỆT KÊ DANH SÁCH HÃNG THEO THỨ TỰ NGƯỢC VS ALPHABET
	select * from Companys order by Name desc;
--5.b LIỆT KÊ DANH SÁCH SẢN PHẨM CỦA CỬA HÀNG THEO THỨ TỰ GIẢM DẦN
	select * from Products order by Price desc;
--5.c HIỂN THỊ THÔNG TIN CỦA HÃNG ASUS
	select * from Companys where Name like 'ASUS';
--5.d LIỆT KÊ DANH SÁCH SẢN PHẨM CÒN ÍT HƠN 11 CHIẾC TRONG KHO
	select * from Products where Amount < 11;
--5.e LIỆT KÊ SẢN PHẨM CỦA HÃNG ASUS
	select Name from Products where CompanyId = '123';
--6.a SỐ HÃNG SẢN PHẨM MÀ CỬA HÀNG HIỆN CÓ
	select count(*) as So_hang from Companys ; 
--6.b SỐ MẶT HÀNG MÀ CỬA HÀNG BÁN
	select count(*) as So_sp from Products;
--6.c TỔNG SỐ SẢN PHẨM CỦA MỖI HÃNG CÓ TRONG CỬA HÀNG
	select count(CompanyId) as Sp,Products.CompanyId from Products where CompanyId in (select CompanyId from Companys) group by Products.CompanyId;
--6.d TỔNG SỐ SẢN PHẨM CỦA  CỬA HÀNG
	select sum(Amount) as Tong_sp_moi_hang from Products;