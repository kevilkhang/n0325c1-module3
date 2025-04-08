create database truong_hoc;

use truong_hoc;

create table giao_vien(
ma_gv char(5) primary key,
ho_ten_gv varchar(255) not null,
gioi_tinh enum('Nam', 'Nữ', 'Khác') not null
);

create table hoc_sinh(
ma_hs char(5) primary key,
ho_ten_hs varchar(255) not null,
gioi_tinh enum('Nam', 'Nữ', 'Khác') not null,
ho_ten_ph varchar(255) not null
);

create table lop_hoc(
id_lop int primary key auto_increment,
ten_lop varchar(255) not null,
ten_gvcn varchar(255) not null,
nam_hoc varchar(50)
);

insert into giao_vien (ma_gv, ho_ten_gv, gioi_tinh) values ('GV123', 'Lương Thị Thu Phương', 'Nữ'); 
insert into giao_vien (ma_gv, ho_ten_gv, gioi_tinh) values ('GV234', 'Nguyễn Quốc Long', 'Nam');
insert into giao_vien (ma_gv, ho_ten_gv, gioi_tinh) values ('GV345', 'Lưu Văn Hiền', 'Nam');

insert into hoc_sinh (ma_hs, ho_ten_hs, gioi_tinh, ho_ten_ph) values ('HS123', 'Bùi Quang Khang', 'Nam', 'Nguyễn Trần Vân Anh');
insert into hoc_sinh (ma_hs, ho_ten_hs, gioi_tinh, ho_ten_ph) values ('HS234', 'Nguyễn Bảo', 'Nam', 'Nguyễn Thị Minh Thúy');
insert into hoc_sinh (ma_hs, ho_ten_hs, gioi_tinh, ho_ten_ph) values ('HS345', 'Vũ Minh Khôi', 'Nam', 'Nguyễn Thị Chưa Có');

insert into lop_hoc (ten_lop, ten_gvcn, nam_hoc) values ('TPM11', 'Phạm Khánh Linh', '2021-2025');
insert into lop_hoc (ten_lop, ten_gvcn, nam_hoc) values ('TPM10', 'Hồ Lê Viết Ninh', '2019-2023');
insert into lop_hoc (ten_lop, ten_gvcn, nam_hoc) values ('TPM02', 'Phan Long', '2020-2024');

select * from giao_vien;

select ho_ten_hs, gioi_tinh, ho_ten_ph
from hoc_sinh;

select * from lop_hoc;



drop database quanli_hs;

drop table lop_hoc;