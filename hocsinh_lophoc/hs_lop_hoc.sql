create database hs_lop_hoc;

use hs_lop_hoc;

create table lop_hoc(
id_lop int primary key auto_increment,
ten_lop varchar(255) not null,
ten_gvcn varchar(255) null,
nam_hoc varchar(50)
);

create table hoc_sinh(
int
ma_hs char(5) primary key,
ho_ten_hs varchar(255) not null,
gioi_tinh enum('Nam', 'Nữ', 'Khác') not null,
ho_ten_ph varchar(255) null
);




drop table lop_hoc;