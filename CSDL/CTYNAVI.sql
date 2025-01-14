use master
if DB_ID(N'CTNAVI')is not null
drop database CTNAVI
go
create database CTNAVI
go
use CTNAVI
go

-----------------------TIM CHUYEN BAY--------------------------------

create table DANHMUCSANBAY
(
MASB char(3) primary key,
TENSB nvarchar(200)
)
go
insert into DANHMUCSANBAY(MASB,TENSB) values ('HAN',N'Hà Nội')
insert into DANHMUCSANBAY(MASB,TENSB) values ('HPH',N'Hải Phòng')
insert into DANHMUCSANBAY(MASB,TENSB) values ('DIN',N'Điện Biên')
insert into DANHMUCSANBAY(MASB,TENSB) values ('DAD',N'Đà Nẵng')
insert into DANHMUCSANBAY(MASB,TENSB) values ('CXR',N'Nha Trang')
insert into DANHMUCSANBAY(MASB,TENSB) values ('DLI',N'Đà Lạt')
insert into DANHMUCSANBAY(MASB,TENSB) values ('VII',N'Vinh')
insert into DANHMUCSANBAY(MASB,TENSB) values ('HUI',N'Huế')
insert into DANHMUCSANBAY(MASB,TENSB) values ('THD',N'Thanh Hóa')
insert into DANHMUCSANBAY(MASB,TENSB) values ('BMV',N'Buôn Mê Thuật')
insert into DANHMUCSANBAY(MASB,TENSB) values ('PXU',N'Pleiku')
insert into DANHMUCSANBAY(MASB,TENSB) values ('UIH',N'Quy Nhơn')
insert into DANHMUCSANBAY(MASB,TENSB) values ('VDH',N'Đồng Hới')
insert into DANHMUCSANBAY(MASB,TENSB) values ('TBB',N'Tuy Hòa')
insert into DANHMUCSANBAY(MASB,TENSB) values ('VCL',N'Chu Lai')
insert into DANHMUCSANBAY(MASB,TENSB) values ('SGN',N'Hồ Chí Minh')
insert into DANHMUCSANBAY(MASB,TENSB) values ('PQC',N'Phú Quốc')
insert into DANHMUCSANBAY(MASB,TENSB) values ('VCS',N'Côn Đảo')
insert into DANHMUCSANBAY(MASB,TENSB) values ('VCA',N'Cần Thơ')
insert into DANHMUCSANBAY(MASB,TENSB) values ('CAH',N'Cà Mau')
insert into DANHMUCSANBAY(MASB,TENSB) values ('VKG',N'Rạch Giá')
go
select MASB,TENSB+' ('+MASB+')' AS TEN_SB from DANHMUCSANBAY 
go

create table DM_HANGHANGKHONG
(
MAHANGHANGKHONG int identity(1,1) primary key,
TENHANGHANGKHONG nvarchar(50),
LOGO nvarchar(50)
)
go
insert into DM_HANGHANGKHONG(TENHANGHANGKHONG,LOGO) values ('Jestar Aline','JESTAR.JPG')
insert into DM_HANGHANGKHONG(TENHANGHANGKHONG,LOGO) values ('Vietjet Aline','VIETJET.JPG')
insert into DM_HANGHANGKHONG(TENHANGHANGKHONG,LOGO) values ('Vietnam Aline','VIETNAMAIRLINE.JPG')

go
SELECT * FROM DM_HANGHANGKHONG
GO
--DROP TABLE DM_HANGHANGKHONG
--DROP TABLE DMCHUYENBAY
GO
create table DMCHUYENBAY
(
MACHUYENBAY int identity(1,1) primary key,
TENCHUYENBAY nvarchar(50),
DIEMDI char(3) foreign key references DANHMUCSANBAY(MASB),
DIEMDEN char(3)foreign key references DANHMUCSANBAY(MASB),
NGAYGIOBAY datetime,
MAHANGHANGKHONG	int foreign key references DM_HANGHANGKHONG(MAHANGHANGKHONG),
GIAVE FLOAT,
CHITIET nvarchar(max)
)
go
SELECT * FROM DMCHUYENBAY
go
--ngay 19/12/2016
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('BL 806','SGN','HAN','2016/12/23 01:55:00',1,990000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Hà Nội, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Nội Bài(HAN)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('BL 790','SGN','DAD','2016/12/23 06:00:00',1,890000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Đà Nẵng(DAD)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('BL 782','SGN','DLI','2016/12/23 07:45:00',1,590000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Đà Lạt, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Đà Lạt(DLI)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('BL 792','HAN','DAD','2016/12/23 09:20:00',1,690000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Nội Bài(HAN) đến Tân Sơn Nhất(SGN)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('BL 798','HAN','SGN','2016/12/23 10:30:00',1,990000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến TP.HCM, Việt Nam<br/>Sân bay: Nội Bài(HAN)) đến Nội Bài(HAN)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('BL 794','HAN','DLI','2016/12/23 12:20:00',1,490000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Nội Bài(HAN) đến  Đà Nẵng(DAD)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('BL 788','DAD','PQC','2016/12/23 21:20:00',1,690000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Phú Quốc, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Phú Quốc(PQC)<br/>Ngày bay:19/12/2016<br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau ')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('BL 796','SGN','HUI','2016/12/23 23:10:00',1,790000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Huế, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Huế(HUI)<br/>Ngày bay:19/12/2016<br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau ')

insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VJ 502','SGN','HAN','2016/12/23 02:55:00',2,990000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Hà Nội, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Nội Bài(HAN)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VJ 506','SGN','DAD','2016/12/23 05:00:00',2,890000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Đà Nẵng(DAD)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VJ 514','SGN','DLI','2016/12/23 06:45:00',2,590000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Đà Lạt, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Đà Lạt(DLI)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VJ 538','HAN','DAD','2016/12/23 08:20:00',2,690000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Nội Bài(HAN) đến Tân Sơn Nhất(SGN)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VJ 564','HAN','SGN','2016/12/23 09:30:00',2,990000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến TP.HCM, Việt Nam<br/>Sân bay: Nội Bài(HAN)) đến Nội Bài(HAN)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VJ 566','HAN','DLI','2016/12/23 11:20:00',2,490000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Nội Bài(HAN) đến  Đà Nẵng(DAD)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VJ 127','DAD','PQC','2016/12/23 16:20:00',2,690000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Phú Quốc, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Phú Quốc(PQC)<br/>Ngày bay:19/12/2016<br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau ')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VJ 123','SGN','HUI','2016/12/23 20:10:00',2,790000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Huế, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Huế(HUI)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi: vui lòng chọn sau')

insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VN 225','SGN','HAN','2016/12/23 04:55:00',3,2200000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Hà Nội, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Nội Bài(HAN)<br/>Ngày bay:19/12/2016<br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi:20 kg ')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VN 230','SGN','DAD','2016/12/23 06:10:00',3,1500000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Đà Nẵng(DAD)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi:20 kg')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VN 234','SGN','DLI','2016/12/23 07:30:00',3,1100000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Đà Lạt, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Đà Lạt(DLI)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi:20 kg')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VN 253','HAN','DAD','2016/12/23 09:00:00',3,1200000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Nội Bài(HAN) đến Tân Sơn Nhất(SGN)<br/>Ngày bay:19/12/2016<br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi:20 kg ')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VN 564','HAN','SGN','2016/12/23 11:30:00',3,2200000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến TP.HCM, Việt Nam<br/>Sân bay: Nội Bài(HAN)) đến Nội Bài(HAN)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi:20 kg')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VN 287','HAN','DLI','2016/12/23 14:20:00',3,2100000,N'Thông tin chuyến bay<br/>Từ Hà Nội, Việt Nam đến Đà Nẵng, Việt Nam<br/>Sân bay: Nội Bài(HAN) đến  Đà Nẵng(DAD)<br/>Ngày bay:19/12/2016<br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi:20 kg ')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VN 279','DAD','PQC','2016/12/23 17:10:00',3,1900000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Phú Quốc, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Phú Quốc(PQC)<br/>Ngày bay:19/12/2016/20<br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi:20 kg ')
insert into DMCHUYENBAY(TENCHUYENBAY,DIEMDI,DIEMDEN,NGAYGIOBAY,MAHANGHANGKHONG,GIAVE,CHITIET) values ('VN 239','SGN','HUI','2016/12/23 19:10:00',3,1700000,N'Thông tin chuyến bay<br/>Từ TP.HCM, Việt Nam đến Huế, Việt Nam<br/>Sân bay: Tân Sơn Nhất(SGN) đến Huế(HUI)<br/>Ngày bay:19/12/2016 <br/Điều kiện hành lý: <br/>Hành Lý Xách Tay:7 kg<br/> Hành lý ký gửi:20 kg')



--20/12/2016
--21/12/2016
--22/12/2016
--23/12/2016

go
select * from DMCHUYENBAY

go
---------
create table DANHSACH_NGUOIDUNG
(
MANGUOIDUNG INT IDENTITY(1,1) PRIMARY KEY,
HOTEN NVARCHAR(50),
TENDANGNHAP VARCHAR(50),
MATKHAU VARCHAR(MAX),
EMAIL VARCHAR(50)
)
GO
create table DM_TRANGWEB
(
MATRANGWEB INT IDENTITY(1,1) PRIMARY KEY,
TENTRANG VARCHAR(50),
DIENGIAI VARCHAR(MAX)
)
GO
create table PHANQUYEN
(
MAPHANQUYEN INT IDENTITY(1,1) PRIMARY KEY,
MATRANGWEB int foreign key references DM_TRANGWEB(MATRANGWEB),
MANGUOIDUNG int foreign key references DANHSACH_NGUOIDUNG(MANGUOIDUNG),
TRUYCAP BIT
)
GO
--drop table DAT_CHO
--drop table DM_KHACHHANG
GO
create table DM_KHACHHANG
(
MAKHACHHANG INT IDENTITY(1,1) PRIMARY KEY,
HOTEN NVARCHAR(50),
NGAYSINH DATETIME,
DIACHI NVARCHAR(50),
SDT INT,
MALIENHE INT,
HINHTHUCTHANHTOAN NVARCHAR(50)

)
go
insert into DM_KHACHHANG(HOTEN,NGAYSINH,DIACHI,SDT,MALIENHE)values (N'Nguyễn Văn A','1990/05/05',N'Bình Dương','0987236079',1)
insert into DM_KHACHHANG(HOTEN,NGAYSINH,DIACHI,SDT,MALIENHE)values (N'Nguyễn Văn B','1992/05/06',N'Hồ chí minh','01658934329',1)
insert into DM_KHACHHANG(HOTEN,NGAYSINH,DIACHI,SDT,MALIENHE)values (N'Nguyễn Văn C','1993/05/07',N'Đồng Nai','0988276564',2)
insert into DM_KHACHHANG(HOTEN,NGAYSINH,DIACHI,SDT,MALIENHE)values (N'Nguyễn Văn D','1989/05/08',N'Bình Phước','01674880308',2)
insert into DM_KHACHHANG(HOTEN,NGAYSINH,DIACHI,SDT,MALIENHE)values (N'Nguyễn Văn E','1988/05/09',N'Tây Ninh','0966544345',2)
insert into DM_KHACHHANG(HOTEN,NGAYSINH,DIACHI,SDT,MALIENHE)values (N'Nguyễn Văn F','1987/05/10',N'bình Thuận','0987236008',3)

go
select * from DM_KHACHHANG
select top 1 * from DM_KHACHHANG order by MAKHACHHANG desc
go
create table DAT_CHO
(
MADATCHO INT IDENTITY(1,1) PRIMARY KEY,
MAKHACHHANG int foreign key references DM_KHACHHANG(MAKHACHHANG),
MACHUYENBAY int foreign key references DMCHUYENBAY(MACHUYENBAY),
SLNGUOILON INT,
SLTREEM INT
)
GO
SELECT * FROM DAT_CHO
GO
create table THONGKE_LUOTTRUYCAP
(
MATRUYCAP INT IDENTITY(1,1) PRIMARY KEY,
NGAYGIOTRUYCAP DATETIME
)
GO
create table HOI_DAP
(
MACAUHOI INT IDENTITY (1,1) PRIMARY KEY,
SOTRUYCAP INT,
CAUHOI NVARCHAR(MAX),
DUYET BIT,
DAP NVARCHAR(MAX)
)
go
--drop table DM_NGANHANG
create table DM_NGANHANG
(
MANGANHANG	int identity(1,1) primary key,
TENNGANHANG Nvarchar(50),
LOGO nvarchar(50),
NOIDUNG nvarchar(max),
TENDANGNHAP VARCHAR(50),
MATKHAU VARCHAR(MAX)
)
go
insert into DM_NGANHANG(TENNGANHANG,LOGO,NOIDUNG,TENDANGNHAP,MATKHAU) values (N'Ngân hàng Vietcombank','vietcombank.jpg',N'Ngân hàng Vietcombank
<br/>Tên tài khoản: Công ty TNHH Thương Mại - Dịch Vụ - Xây Dựng NAVI<br/>
Số tài khoản: 0281 000 340 437','a','a')


	
insert into DM_NGANHANG(TENNGANHANG,LOGO,NOIDUNG,TENDANGNHAP,MATKHAU) values (N'Ngân hàng Vietcombank','vietcombank.jpg',N'Ngân hàng Vietcombank
Tên tài khoản: Hoàng Thị Quyến
Số tài khoản: 0281 000 255 712','b','b')
insert into DM_NGANHANG(TENNGANHANG,LOGO,NOIDUNG,TENDANGNHAP,MATKHAU) values (N'Ngân hàng Đông A Bank','dongabank.jpg',N'Ngân Hàng Đông A Bank
Tên tài khoản: Hoàng Thị Quyến
Số tài khoản: 0104 078 702','c','c')
insert into DM_NGANHANG(TENNGANHANG,LOGO,NOIDUNG,TENDANGNHAP,MATKHAU) values (N'Ngân hàng Á Châu','achau.jpg',N'Ngân Hàng Ngân Hàng Á Châu
Tên tài khoản: Công ty TNHH Thương Mại - Dịch Vụ - Xây Dựng NAVI
Số tài khoản: 9805 7899','d','d')
insert into DM_NGANHANG(TENNGANHANG,LOGO,NOIDUNG,TENDANGNHAP,MATKHAU) values (N'Ngân hàng AgriBank','agribank.jpg',N'Ngân Hàng AgriBank
Tên tài khoản: Hoàng Thị Quyến
Số tài khoản: 5500 205 010 009','d','d')
insert into DM_NGANHANG(TENNGANHANG,LOGO,NOIDUNG,TENDANGNHAP,MATKHAU) values (N'Ngân hàng SaiGonBank','thuongmaicophansaigon.jpg',N'Ngân Hàng SaiGonBank
Tên tài khoản: Dương Đức Định
Số tài khoản: 0013 704 061 98 522','e','e')
insert into DM_NGANHANG(TENNGANHANG,LOGO,NOIDUNG,TENDANGNHAP,MATKHAU) values (N'Ngân hàng VietinBank','vientinbank.jpg',N'Ngân Hàng VietinBank
Tên tài khoản: Dương Đức Định
Số tài khoản: 01101 000 434 7687','f','f')
insert into DM_NGANHANG(TENNGANHANG,LOGO,NOIDUNG,TENDANGNHAP,MATKHAU) values (N'Ngân hàng BIDV','dautuvphattrien.jpg',N'Ngân Hàng BIDV
Tên tài khoản: Dương Đức Định
Số tài khoản: 6501 000 078 55 72','g','g')
go
select * from DM_NGANHANG
go
--DROP TABLE KHUYENMAI
create table KHUYENMAI
(
MAKM int identity(1,1) primary key,
NGAYDANGTIN DATETIME,
HINH Nvarchar(50),
TOMTAT Nvarchar(100),
CHITIET Nvarchar(max)
)
go
insert into KHUYENMAI(HINH,TOMTAT,CHITIET)values ('khuyenmai1.jpg','Du Lich Dat viet','Chương trình diễn ra từ 11:00 thứ Sáu 16/12 đến 23:59 Chủ nhật ngày 18/12 và áp dụng cho toàn mạng bay của Jetstar Pacific. Dưới dây là thông tin chi tiết các điểm đến có khuyến mãi, ngày bay và giá vé cho các hành trình bay:')
insert into KHUYENMAI(HINH,TOMTAT,CHITIET)values ('khuyenmai2.jpg',N'Du Lich ',N'Chương trình diễn ra từ 11:00 thứ Sáu 16/12 đến 23:59 Chủ nhật ngày 18/12 và áp dụng cho toàn mạng bay của Jetstar Pacific. Dưới dây là thông tin chi tiết các điểm đến có khuyến mãi, ngày bay và giá vé cho các hành trình bay:')

go

----------------QUAN TRI----------------------
create table NGUOIDUNG
(
MANGUOIDUNG INT IDENTITY(1,1) PRIMARY KEY,
TENDANGNHAP VARCHAR(50),
MATKHAU VARCHAR(MAX),
EMAIL VARCHAR(50)
)
go
--DROP table DATCHO
--DROP table DM_CODEVE
create table DATCHO
(
MADATCHO INT IDENTITY(1,1) PRIMARY KEY,
MAKHACHHANG INT foreign key references DM_KHACHHANG(MAKHACHHANG),
MACHUYENBAY INT foreign key references DMCHUYENBAY(MACHUYENBAY),
SOCHO INT,
MANGANHANG INT foreign key references DM_NGANHANG(MANGANHANG),
DATHANHTOAN BIT,
NGAYDATCHO DATETIME DEFAULT GETDATE()
)
GO
SELECT * FROM DATCHO
GO
create table DM_CODEVE
(
MA_CODEVE INT IDENTITY(1,1) PRIMARY KEY,
MADATCHO INT foreign key references DATCHO(MADATCHO)
)
select * from DM_CODEVE

go













--create table NOIKHOIHANH
--(
--	MANOIKHOIHANH INT identity(1,1)primary key,
--	TENNOIKHOIHANH nvarchar(50)
--)
--GO 
--insert into NOIKHOIHANH(TENNOIKHOIHANH) VALUES (N'Thành Phố Hồ Chí Minh')
--insert into NOIKHOIHANH(TENNOIKHOIHANH) VALUES (N'Hà Nội')
--insert into NOIKHOIHANH(TENNOIKHOIHANH) VALUES (N'Đà Nẵng')
--go
--select * from NOIKHOIHANH
--go
--create table LOAITUA
--(
--	MALOAITUA int identity(1,1) primary key ,
--	TENLOAITUA nvarchar(50)
--)
--go
--insert into LOAITUA(TENLOAITUA) values (N'Tua Trong Nước')
--insert into LOAITUA(TENLOAITUA) values (N'Tua Nước Ngoài')
--go
--create table NOIDEN
--(
--	MANNOIDEN INT identity(1,1)primary key,
--	TENNOIDEN nvarchar(50)
--)
--insert into NOIDEN(TENNOIDEN) values (N'Sa Pa')
--insert into NOIDEN(TENNOIDEN) values (N'Hải Phòng')
--insert into NOIDEN(TENNOIDEN) values (N'Huế')
--go
--create table BANGGIA
--(
--	MABANGGIA int identity(1,1) primary key,
--	GIA nvarchar(50)
--)
--go
--insert into BANGGIA(GIA) values(N'1-2 triệu')
--insert into BANGGIA(GIA) values(N'2-3 triệu')
--insert into BANGGIA(GIA) values(N'3-4 triệu')
--go
--create table DANHMUCTUA
--(
--MATUA varchar(20) primary key,
--TENTUA nvarchar(500),
--THOIGIAN nvarchar(10),
--MANOIKHOIHANH int foreign key references NOIKHOIHANH(MANOIKHOIHANH),
--MANNOIDEN int foreign key references NOIDEN(MANNOIDEN),
--NGAYKHOIHANH datetime,
--TONGSOVE int,
--GIA FLOAT,
--GIAM FLOAT,
--CHUONGTRINHTUA nvarchar(max),
--CHITIETTUA nvarchar(max)
--)
--go
-- create table LOAIXE
--(
--MALOAIXE int identity(1,1) primary key ,
--TENLOAIXE nvarchar(50)
--)
--go
--insert into LOAIXE(TENLOAIXE)values(N'40 chổ')
--insert into LOAIXE(TENLOAIXE)values(N'30 chổ')
--insert into LOAIXE(TENLOAIXE)values(N'45 chổ')
--go
--create table BANGDATXE
--(
--MABANGGIA int identity (1,1)primary key,
--MADIEMDI int foreign key references NOIKHOIHANH(MANOIKHOIHANH),
--MADIEMDEN int foreign key references NOIDEN(MANNOIDEN),
--MALOAIXE int foreign key references LOAIXE(MALOAIXE),
--GIA float 
--)
--go
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(1,1,1,3000000)
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(1,2,2,2500000)
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(1,3,3,2000000)
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(2,1,1,1500000)
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(2,1,2,1000000)
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(2,1,3,4000000)
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(3,1,1,2000000)
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(3,1,2,3000000)
--insert into BANGDATXE(MADIEMDI,MADIEMDEN,MALOAIXE,GIA)values(3,1,3,5000000)
--go

--select *,convert (varchar(10),NGAYGIOBAY,103) from DMCHUYENBAY where DIEMDI='SGN' and DIEMDEN='DAD'and CONVERT(varchar(10),NGAYGIOBAY,103)='01/12/2016'

--go
--select DMCHUYENBAY.MACHUYENBAY,DM_HANGHANGKHONG.LOGO,DMCHUYENBAY.TENCHUYENBAY,DMCHUYENBAY.NGAYGIOBAY,DMCHUYENBAY.GIAVE,DMCHUYENBAY.CHITIET from DMCHUYENBAY,DM_HANGHANGKHONG where DMCHUYENBAY.MAHANGHANGKHONG=DM_HANGHANGKHONG.MAHANGHANGKHONG
--go
--select  * ,CONVERT(varchar(10),NGAYGIOBAY,103)from DMCHUYENBAY where MACHUYENBAY=1 and MAHANGHANGKHONG=1 and CONVERT(varchar(10),NGAYGIOBAY,103)='10/11/2016'
--go
--select  * from DMCHUYENBAY where MACHUYENBAY=1 and MAHANGHANGKHONG=1 and CONVERT(varchar(10),NGAYGIOBAY,103)='10/11/2016'
--go

