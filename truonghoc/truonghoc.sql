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
INSERT INTO HocSinh VALUES 
('HS001', 'Nguyen Thi Lan', 'Nu', 'L01'),
('HS002', 'Tran Van Minh', 'Nam', 'L01'),
('HS003', 'Le Thi Thu', 'Nu', 'L02'),
('HS004', 'Pham Van Hoang', 'Nam', 'L02');

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


select distinct ho_ten from hocsinh;
select distinct ma_lop from lop;



