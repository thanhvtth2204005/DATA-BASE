--INSERT NHACUNGCAP
 insert into NHACUNGCAP 
	values ('NCC001',N'Cty TNHH Toàn Phát','Hai Chau','05113999888','568941'),
		   ('NCC002',N'Cty cổ phần Đông Du','Lien Chieu','05113999889','456789'),
		   ('NCC003',N'Ông Nguyễn Văn A','Hoa Thuan','05113999890','321456'),
		   ('NCC004',N'Cty cổ phần Toàn Cầu Xanh','Hai Chau','05113658945','513364'),
		   ('NCC005',N'Cty TNHH AMA','THANH KHE','05113875466','546546'),
		   ('NCC006',N'Bà Trần Thị Bích Vân','Lien Chieu','05113587469','524545'),
		   ('NCC007',N'Cty TNHH Phan Thành','Thanh Khe','05113987456','113021'),
		   ('NCC008',N'Ông Phan Đình Nam','Hoa Thuan','05113532456','121230'),
		   ('NCC009',N'Tập Đoàn Đông Nam Á','Lien Chieu','05113987121','533654'),
		   ('NCC010',N'Cty cổ phần Rạng Đông','Lien Chieu','05113569654','187864');
	select * from NHACUNGCAP;
	--delete from NHACUNGCAP;

--INSERT LOAIDICHVU
insert into LOAIDICHVU
	values('DV01',N'Dịch vụ xe taxi'),
		  ('DV02',N'Dịch vụ xe buýt công cộng theo tuyến cố định'),
		  ('DV03',N'Dịch vụ xe cho thuê theo hợp đồng');
	select * from DONGXE;
	--delete from LOAIDICHVU;
--INSERT MUCPHI
insert into MUCPHI
	values('MP01','10000',N'Áp dụng từ 1/2015'),
	 	  ('MP02','15000',N'Áp dụng từ 2/2015'),
		  ('MP03','20000',N'Áp dụng từ 1/2010'),
		  ('MP04','25000',N'Áp dụng từ 2/2011');
	select * from MUCPHI;

	update MUCPHI set DonGia = 10000 where MaMP='MP01';
	--delete from MUCPHI;

--INSERT DONG XE
insert into DONGXE 
	values ('Hiace','Toyota','16'),
		   ('Creato','KIA','7'),
		   ('Starex','HuynDai','7'),
		   ('Vios','Toyota','4'),
		   ('Escape','Ford','7'),
		   ('Grand-i10','HuynDai','7'),
		   ('Forte','KIA','7');

select * from DONGXE;
--delete from DONGXE;
 
 --INSERT DANGKYCUNGCAP
 insert into DANGKYCUNGCAP
	values ('DK001','NCC001','DV01','Hiace','MP01','2015/11/20','2016/11/20','4'),
		   ('DK002','NCC002','DV02','Vios','MP02','2015/11/20','2017/11/20','3'),
		   ('DK003','NCC003','DV03','Escape','MP03','2017/11/20','2018/11/20','7'),
		   ('DK004','NCC005','DV01','Creato','MP04','2015/11/20','2017/11/20','5'),
		   ('DK005','NCC002','DV02','Forte','MP03','2019/11/20','2019/11/20','1'),
		   ('DK006','NCC004','DV03','Starex','MP04','2016/11/10','2020/11/20','2'),
		   ('DK007','NCC005','DV01','Creato','MP03','2015/11/30','2021/11/20','8'),
		   ('DK008','NCC006','DV01','Vios','MP02','2016/02/28','2016/01/25','9'),
		   ('DK009','NCC005','DV03','Grand-i10','MP02','2016/04/27','2016/08/15','10'),
	       ('DK010','NCC006','DV01','Forte','MP02','2015/11/21','2017/04/30','5'),
		   ('DK011','NCC007','DV01','Forte','MP01','2016/12/25','2017/02/20','4'),
		   ('DK012','NCC007','DV03','Creato','MP01','2014/04/16','2017/12/20','6'),
		   ('DK013','NCC003','DV02','Creato','MP01','2015/12/21','2016/12/21','8'),
		   ('DK014','NCC008','DV02','Creato','MP01','2016/05/20','2016/12/30','1'),
		   ('DK015','NCC003','DV01','Hiace','MP02','2018/04/24','2019/11/20','6'),
		   ('DK016','NCC001','DV03','Grand-i10','MP02','2016/06/22','2019/11/20','8'),
		   ('DK017','NCC002','DV03','Creato','MP03','2016/09/30','2019/09/30','4'),
		   ('DK018','NCC008','DV03','Escape','MP04','2017/12/13','2018/09/30','2'),
		   ('DK019','NCC003','DV03','Escape','MP03','2016/01/24','2018/09/30','8'),
		   ('DK020','NCC002','DV03','Creato','MP04','2016/05/03','2016/12/30','7'),
	       ('DK021','NCC006','DV01','Forte','MP03','2015/01/30','2018/12/30','9'),
		   ('DK022','NCC002','DV02','Creato','MP04','2016/07/25','2017/12/30','6'),			  
	       ('DK023','NCC002','DV01','Forte','MP03','2016/11/30','2018/05/20','5'),
		   ('DK024','NCC003','DV03','Forte','MP04','2017/12/17','2019/11/30','8'),
		   ('DK025','NCC003','DV03','Hiace','MP02','2016/08/24','2017/10/25','1');
	select * from  DANGKYCUNGCAP;
--delete from DANGKYCUNGCAP;


