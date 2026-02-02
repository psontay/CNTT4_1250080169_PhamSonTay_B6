CREATE TABLE ChiNhanh (
	MaCN varchar2(10) PRIMARY KEY,
	MaNH varchar2(10),
	ThanhPhoCN nvarchar2(50),
	TaiSan number(20,2),
	CONSTRAINT FK_CN_NH FOREIGN KEY (MaNH) REFERENCES NganHang(MaNH)
	
);

CREATE TABLE NganHang (
	MaNH varchar2(10) PRIMARY KEY,
	TenNH nvarchar2(100)
	
);

CREATE TABLE KhachHang (
 	MaKH varchar2(10) PRIMARY key,
 	TenKH nvarchar2(100),
 	DiaChi nvarchar2(200)
);

CREATE TABLE TaiKhoanGoi (
    SoTKG varchar2(20) PRIMARY KEY,
    MaKH varchar2(10),
    MaCN varchar2(10),
    SoTienGoi number(20,2),
    CONSTRAINT FK_TKG_KH FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    CONSTRAINT FK_TKG_CN FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);

CREATE TABLE TaiKhoanVay (
    SoTKV varchar2(20) PRIMARY KEY,
    MaKH varchar2(10),
    MaCN varchar2(10),
    SoTienVay NUMBER(20, 2),
    CONSTRAINT FK_TKV_KH FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
    CONSTRAINT FK_TKV_CN FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);

INSERT INTO NganHang VALUES (1, 'Ngan Hang Cong Thuong');
INSERT INTO NganHang VALUES (2, 'Ngan Hang Ngoai Thuong');
INSERT INTO NganHang VALUES (3, 'Ngan Hang Nong Nghiep');
INSERT INTO NganHang VALUES (4, 'Ngan Hang A Chau');
INSERT INTO NganHang VALUES (5, 'Ngan Hang Thuong Tin');
SELECT * FROM NganHang;

INSERT INTO ChiNhanh VALUES ('CN01', '1', 'Da Lat', 2000000000);
INSERT INTO ChiNhanh VALUES ('CN02', '2', 'Nha Trang', 2700000000);
INSERT INTO ChiNhanh VALUES ('CN03', '3', 'Thanh Hoa', 4500000000);
INSERT INTO ChiNhanh VALUES ('CN04', '4', 'TP HCM', 6000000000);
INSERT INTO ChiNhanh VALUES ('CN05', '5', 'Da Nang', 7000000000);
INSERT INTO ChiNhanh VALUES ('CN11', '1', 'TP HCM', 5000000000);
INSERT INTO ChiNhanh VALUES ('CN12', '2', 'Hue', 1400000000);
INSERT INTO ChiNhanh VALUES ('CN13', '3', 'Da Nang', 3600000000);
INSERT INTO ChiNhanh VALUES ('CN14', '4', 'Ha Noi', 5700000000);
INSERT INTO ChiNhanh VALUES ('CN21', '1', 'Ha Noi', 3500000000);
INSERT INTO ChiNhanh VALUES ('CN22', '2', 'Ha Noi', 4500000000);
INSERT INTO ChiNhanh VALUES ('CN23', '3', 'Da Lat', 2400000000);
INSERT INTO ChiNhanh VALUES ('CN31', '1', 'Da Nang', 4000000000);
INSERT INTO ChiNhanh VALUES ('CN32', '2', 'TP HCM', 5600000000);
INSERT INTO ChiNhanh VALUES ('CN33', '3', 'Can Tho', 5400000000);
INSERT INTO ChiNhanh VALUES ('CN43', '3', 'Nam Dinh', 3600000000);
SELECT * FROM ChiNhanh;


INSERT INTO KhachHang VALUES ('111222333', 'Ho Thi Thanh Thao', '456 Le Duan, Ha Noi');
INSERT INTO KhachHang VALUES ('112233445', 'Tran Van Tien', '12 Dien Bien Phu, Q1, TP HCM');
INSERT INTO KhachHang VALUES ('123123123', 'Phan Thi Quynh Nhu', '54 Hai Ba Trung, Ha Noi');
INSERT INTO KhachHang VALUES ('123412341', 'Nguyen Van Thao', '34 Tran Phu, TP Nha Trang');
INSERT INTO KhachHang VALUES ('123456789', 'Nguyen Thi Hoa', '1/4 Hoang Van Thu, Da Lat');
INSERT INTO KhachHang VALUES ('221133445', 'Nguyen Thi Kim Mai', '4 Tran Binh Trong, Da Lat');
INSERT INTO KhachHang VALUES ('222111333', 'Do Tien Dong', '123 Tran Phu, Nam Dinh');
INSERT INTO KhachHang VALUES ('331122445', 'Bui Thi Dong', '345 Tran Hung Dao, Thanh Hoa');
INSERT INTO KhachHang VALUES ('333111222', 'Tran Dinh Hung', '783 Ly Thuong Kiet, Can Tho');
INSERT INTO KhachHang VALUES ('441122335', 'Nguyen dinh Cuong', 'P12 Thanh Xuan Nam, Q Thanh Xuan');
INSERT INTO KhachHang VALUES ('456456456', 'Tran Nam Son', '5 Le Duan, TP Da Nang');
INSERT INTO KhachHang VALUES ('551122334', 'Tran Thi Khanh Van', '1A Ho Tung Mau, Da Lat');
INSERT INTO KhachHang VALUES ('987654321', 'Ho Thanh Son', '209 Tran Hung Dao, Q5, TP HCM');
SELECT * FROM KhachHang;

INSERT INTO TaiKhoanGoi VALUES ('00001A', '123123123', 'CN01', 10000000);
INSERT INTO TaiKhoanGoi VALUES ('00001C', '123456789', 'CN01', 127000000);
INSERT INTO TaiKhoanGoi VALUES ('00002A', '221133445', 'CN02', 12500000);
INSERT INTO TaiKhoanGoi VALUES ('00003H', '456456456', 'CN03', 123000000);
INSERT INTO TaiKhoanGoi VALUES ('00005A', '222111333', 'CN05', 1200000);
INSERT INTO TaiKhoanGoi VALUES ('00005D', '987654321', 'CN05', 345000000);
INSERT INTO TaiKhoanGoi VALUES ('00005N', '123412341', 'CN05', 45000000);
INSERT INTO TaiKhoanGoi VALUES ('00003A', '331122445', 'CN13', 27000000);
INSERT INTO TaiKhoanGoi VALUES ('00004D', '551122334', 'CN14', 560000000);
INSERT INTO TaiKhoanGoi VALUES ('00004P', '123456789', 'CN14', 35400000);
INSERT INTO TaiKhoanGoi VALUES ('00001B', '123412341', 'CN21', 67000000);
INSERT INTO TaiKhoanGoi VALUES ('00002G', '222111333', 'CN22', 56000000);
INSERT INTO TaiKhoanGoi VALUES ('00004F', '987654321', 'CN23', 4500000);
INSERT INTO TaiKhoanGoi VALUES ('00003D', '333111222', 'CN33', 47000000);
SELECT * FROM TaiKhoanGoi;

INSERT INTO TaiKhoanVay VALUES ('10001A', '111222333', 'CN01', 10000000);
INSERT INTO TaiKhoanVay VALUES ('10002A', '333111222', 'CN02', 6000000);
INSERT INTO TaiKhoanVay VALUES ('10004A', '551122334', 'CN04', 20000000);
INSERT INTO TaiKhoanVay VALUES ('10005G', '221133445', 'CN05', 15000000);
INSERT INTO TaiKhoanVay VALUES ('10001D', '987654321', 'CN11', 45000000);
INSERT INTO TaiKhoanVay VALUES ('10002D', '112233445', 'CN12', 12000000);
INSERT INTO TaiKhoanVay VALUES ('10003F', '441122335', 'CN13', 5500000);
INSERT INTO TaiKhoanVay VALUES ('10005A', '123123123', 'CN14', 12500000);
SELECT * FROM TaiKhoanVay;
-- cau 1
select distinct a.tennh 
from nganhang a, chinhanh b 
where a.manh = b.manh and b.thanhphocn = 'Da Lat';

-- cau 2
select distinct thanhphocn from chinhanh 
where manh = (select manh from nganhang where tennh = 'Ngan Hang Cong Thuong');

-- cau 3 
select a.* from chinhanh a 
join nganhang b on a.manh = b.manh 
where b.tennh = 'Ngan Hang Cong Thuong' and a.thanhphocn = 'TP HCM';

-- cau 4
select a.tennh, b.* from nganhang a join chinhanh b on a.manh = b.manh;

-- cau 5
select * from khachhang where diachi like '%Ha Noi%';

-- cau 6 
select * from khachhang where tenkh like '% Son';

-- cau 7
select * from khachhang where diachi like '%Tran Hung Dao%';

-- cau 8
select * from khachhang where tenkh like '% Thao';

-- cau 9 
select * from khachhang 
where makh like '11%' and diachi like '%TP HCM%';

-- cau 10
select a.tennh, b.thanhphocn, b.taisan
from nganhang a, chinhanh b
where a.manh = b.manh
order by b.taisan asc, b.thanhphocn asc;

-- cau 11
select a.tennh, b.* from nganhang a join chinhanh b on a.manh = b.manh 
where b.taisan > 3000000000 and b.taisan < 5000000000;

-- cau 12 
select manh, avg(taisan) as t_san_trung_binh 
from chinhanh 
group by manh;

-- cau 13 
select a.* from khachhang a
join taikhoanvay b on a.makh = b.makh
join chinhanh c on b.macn = c.macn
join nganhang d on c.manh = d.manh
where a.tenkh like '% Thao' and d.tennh = 'Ngan Hang Cong Thuong';

-- cau 14 
select a.tennh, sum(b.taisan) as tong_tai_san
from nganhang a join chinhanh b on a.manh = b.manh
group by a.tennh;

-- cau 15
select macn, taisan from chinhanh 
where taisan = (select max(taisan) from chinhanh);



-- cau 17
select a.sotkv from taikhoanvay a
join chinhanh b on a.macn = b.macn
join nganhang c on b.manh = c.manh
where c.tennh = 'Ngan Hang Ngoai Thuong' and a.sotienvay > 1200000;

-- cau 18
select macn, sum(sotiengoi) as tong_tien_gui 
from taikhoangoi 
group by macn;


-- cau 20 
select a.tenkh, sum(b.sotienvay) as tong_vay
from khachhang a join taikhoanvay b on a.makh = b.makh
group by a.tenkh
having sum(b.sotienvay) > 30000000;


