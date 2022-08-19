create table NHACUNGCAP(
MaNhaCC varchar(20) not null primary key,
TenNhaCC nvarchar(255) not null unique,
DiaChi nvarchar(255) not null,
SoDT varchar(20) not null check(LEN(SoDT) =11 ) unique,
MaSoThue varchar(50) not null unique
);

create table MUCPHI(
MaMP varchar(20) not null primary key,
DonGia decimal(16,0) not null check(DonGia >= 0) default 0,
MoTa nvarchar(255) not null
);

create table LOAIDICHVU(
MaLoaiDV varchar(20) not null primary key,
TenLoaiDV nvarchar(255) not null
);

create table DONGXE(
DongXe varchar(255) not null primary key,
HangXe varchar(50) not null ,
SoChoNgoi int not null check(LEN(SoChoNgoi)<=45)
);

create table DANGKYCUNGCAP(
MaDKCC varchar(20)  primary key ,
MaNhaCC varchar(20) foreign key references NHACUNGCAP(MaNhaCC),
MaLoaiDV varchar(20) foreign key(MaLoaiDV)  references LOAIDICHVU(MaLoaiDV),
DongXe varchar(255) foreign key (DongXe) references DONGXE(DongXe),
MaMP varchar(20) foreign key (MaMP) references MUCPHI(MaMP),
NgayBatDauCungCap date not null default GETDATE(),
NgayKetThucCungCap date not null default GETDATE(),
SoLuongXeDangKy int not null
);

drop table  DANGKYCUNGCAP

DROP TABLE NHACUNGCAP;
DROP TABLE DANGKYCUNGCAP;
DROP TABLE DONGXE;
DROP TABLE LOAIDICHVU;
DROP TABLE MUCPHI;
