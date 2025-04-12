-- Tạo cơ sở dữ liệu
CREATE DATABASE IF NOT EXISTS TruongHoc;
USE TruongHoc;

-- Tạo bảng GiaoVien
CREATE TABLE GiaoVien (
    ma_gv VARCHAR(10) PRIMARY KEY,
    ho_ten VARCHAR(50) NOT NULL
);

-- Tạo bảng Lop
CREATE TABLE Lop (
    ma_lop VARCHAR(10) PRIMARY KEY,
    ten_lop VARCHAR(50) NOT NULL,
    ma_gvcn VARCHAR(10) NOT NULL,
    FOREIGN KEY (ma_gvcn) REFERENCES GiaoVien(ma_gv)
);

-- Tạo bảng HocSinh
CREATE TABLE HocSinh (
    ma_hs VARCHAR(10) PRIMARY KEY,
    ho_ten VARCHAR(50) NOT NULL,
    gioi_tinh VARCHAR(10) NOT NULL,
    ten_phu_huynh VARCHAR(50) NOT NULL,
    dia_chi VARCHAR(100) NOT NULL,	
    ma_lop VARCHAR(10) NOT NULL,
    FOREIGN KEY (ma_lop) REFERENCES Lop(ma_lop)
);

-- Tạo bảng MonHoc
CREATE TABLE MonHoc (
    ma_mon VARCHAR(10) PRIMARY KEY,
    ten_mon VARCHAR(50) NOT NULL
);

-- Tạo bảng PhanCong (giáo viên phụ trách môn học)
CREATE TABLE PhanCong (
    ma_gv VARCHAR(10),
    ma_lop VARCHAR(10),
    ma_mon VARCHAR(10),
    hoc_ky VARCHAR(10),
    PRIMARY KEY (ma_gv, ma_lop, ma_mon, hoc_ky),
    FOREIGN KEY (ma_gv) REFERENCES GiaoVien(ma_gv),
    FOREIGN KEY (ma_lop) REFERENCES Lop(ma_lop),
    FOREIGN KEY (ma_mon) REFERENCES MonHoc(ma_mon)
);

-- Tạo bảng Diem
CREATE TABLE Diem (
    ma_hs VARCHAR(10),
    hoc_ky VARCHAR(10),
    ma_mon VARCHAR(10),
    diem_giua_ky FLOAT NOT NULL,
    diem_cuoi_ky FLOAT NOT NULL,
    PRIMARY KEY (ma_hs, hoc_ky, ma_mon),
    FOREIGN KEY (ma_hs) REFERENCES HocSinh(ma_hs),
    FOREIGN KEY (ma_mon) REFERENCES MonHoc(ma_mon)
);

-- Dữ liệu mẫu
-- Giáo viên
INSERT INTO GiaoVien VALUES 
('GV001', 'Nguyen Van An'),
('GV002', 'Tran Thi Binh'),
('GV003', 'Le Van Cuong');

-- Lớp học
INSERT INTO Lop VALUES 
('L01', '10A1', 'GV001'),
('L02', '10A2', 'GV002');

-- Học sinh
INSERT INTO HocSinh (ma_hs, ho_ten, gioi_tinh, ten_phu_huynh, dia_chi, ma_lop) VALUES 
('HS001', 'Nguyen Thi Lan', 'Nu', 'Nguyen Van Hoa', '123 Le Loi, Hai Chau, Da Nang', 'L01'),
('HS002', 'Tran Van Minh', 'Nam', 'Tran Thi Hue', '45 Nguyen Trai, Thanh Khe, Da Nang', 'L01'),
('HS003', 'Le Thi Thu', 'Nu', 'Le Van Tien', '99 Hai Ba Trung, Son Tra, Da Nang', 'L02'),
('HS004', 'Pham Van Hoang', 'Nam', 'Pham Thi Lan', '12 Tran Phu, Ngu Hanh Son, Da Nang', 'L02'),
('HS005', 'Do Thi Mai', 'Nu', 'Do Van Thanh', '88 Phan Chau Trinh, Hai Chau, Da Nang', 'L01'),
('HS006', 'Nguyen Van Khoa', 'Nam', 'Nguyen Thi Kim', '11 Hoang Hoa Tham, Lien Chieu, Da Nang', 'L01'),
('HS007', 'Bui Thi Cam', 'Nu', 'Bui Van Lam', '66 Le Duan, Hai Chau, Da Nang', 'L01'),
('HS008', 'Vo Van Hieu', 'Nam', 'Vo Thi Lien', '34 Ngo Quyen, Son Tra, Da Nang', 'L02'),
('HS009', 'Trinh Thi Bao', 'Nu', 'Trinh Van Sang', '77 Tran Cao Van, Thanh Khe, Da Nang', 'L02'),
('HS010', 'Hoang Minh Tri', 'Nam', 'Hoang Thi Dao', '18 Duy Tan, Ngu Hanh Son, Da Nang', 'L01');

-- Môn học
INSERT INTO MonHoc VALUES 
('TOAN', 'Toan'),
('LY', 'Vat Ly'),
('HOA', 'Hoa Hoc'),
('VAN', 'Ngu Van');

-- Phân công giảng dạy
INSERT INTO PhanCong VALUES 
('GV001', 'L01', 'TOAN', 'HK1'),
('GV001', 'L01', 'LY', 'HK1'),
('GV002', 'L02', 'VAN', 'HK2'),
('GV003', 'L02', 'HOA', 'HK2');

-- Điểm học sinh
INSERT INTO Diem VALUES 
('HS001', 'HK1', 'TOAN', 7.5, 8.0),
('HS001', 'HK1', 'LY', 6.0, 6.5),
('HS002', 'HK1', 'TOAN', 8.0, 8.5),
('HS002', 'HK1', 'LY', 7.5, 7.0),
('HS003', 'HK2', 'HOA', 7.0, 8.0),
('HS003', 'HK2', 'VAN', 8.5, 9.0),
('HS004', 'HK2', 'HOA', 6.5, 7.5),
('HS004', 'HK2', 'VAN', 7.0, 6.5);

-- SELECT KHÔNG WHERE
select * from GiaoVien;
select ho_ten, gioi_tinh, ten_phu_huynh from HocSinh;
select * from lop;

-- WHERE
select * from hocsinh where gioi_tinh = 'Nam';
select ho_ten, gioi_tinh, dia_chi from hocsinh where ten_phu_huynh is null;
select * from lop where ma_gvcn is null;
select * from hocsinh where gioi_tinh = 'Nu' and dia_chi like '%Thanh Khe%';
SELECT * FROM hocsinh WHERE (gioi_tinh = 'Nam' AND dia_chi LIKE '%Hai Chau%') OR (gioi_tinh = 'Nữ' AND dia_chi LIKE '%Thanh Khe%');
SELECT * FROM hocsinh WHERE (gioi_tinh = 'Nam' AND ten_phu_huynh IS NULL) OR (gioi_tinh = 'Nu' AND ma_lop IS NULL);
SELECT * FROM hocsinh WHERE gioi_tinh = 'Nam' and (ma_lop is null or ten_phu_huynh is null);
select distinct ma_mon from phancong where hoc_ky = 'HK2';

-- DISTINCT
select distinct ho_ten from hocsinh;
select distinct ma_lop from hocsinh;
select distinct ma_mon from phancong where ma_mon is not null;
-- select distinct ma_mon from diem_cuoi_ky

-- JOIN 2 BẢNG
select hs.ma_hs, hs.ho_ten, hs.gioi_tinh, hs.ma_lop, lop.ten_lop, lop.ma_gvcn from hocsinh hs inner join lop ON hs.ma_lop = lop.ma_lop;
select hs.ma_hs, hs.ho_ten, kq.hoc_ky, kq.ma_mon, kq.diem_giua_ky, kq.diem_cuoi_ky from hocsinh hs inner join ket_qua_hoc_tap kq ON hs.ma_hs = kq.ma_hs;
select gv.ma_gv, gv.ho_ten, pc.ma_lop, pc.ma_mon, pc.hoc_ky from giaovien gv inner join phancong ON gv.ma_gv = pc.ma_gvpc;



drop database TruongHoc;