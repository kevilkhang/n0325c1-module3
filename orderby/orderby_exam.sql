create database school_management;

use school_management;

create table student(
id int primary key auto_increment,
name varchar(50) not null,
address varchar(255) not null
);

insert into student (name, address) values ('Nguyễn Thị Minh Tuyết Nhã Vy', '123 Lý Chính Thắng, Q.3, TP.HCM');
insert into student (name, address) values ('Phạm Văn Tường Linh Thanh Vy', '45 Võ Thị Sáu, Q.3, TP.HCM');
insert into student (name, address) values ('Nguyễn Thị Hồng Diễm Như Vy', '89 Nguyễn Thượng Hiền, Q.3, TP.HCM');
insert into student (name, address) values ('Trần Thị Bảo Trân Nhã Khánh', '201 Cách Mạng Tháng Tám, Q.3, TP.HCM');
insert into student (name, address) values ('Lê Thị Ngọc Mai Tuyết Nhung', '78 Lê Văn Sỹ, Q.3, TP.HCM');
insert into student (name, address) values ('Nguyễn Thị Thanh Trúc Bảo Vy', '56 Trần Quốc Thảo, Q.3, TP.HCM');
insert into student (name, address) values ('Võ Văn Khánh Linh Nhã Hân', '321 Nguyễn Đình Chiểu, Q.3, TP.HCM');
insert into student (name, address) values ('Nguyễn Văn Hữu Tấn Khánh', '134 Nguyễn Thiện Thuật, Q.3, TP.HCM');
insert into student (name, address) values ('Phạm Thị Diễm Quỳnh Ái Vy', '210 Trương Định, Q.3, TP.HCM');
insert into student (name, address) values ('Nguyễn Thị Thuỳ Trang Tuyết', '10 Hồ Xuân Hương, Q.3, TP.HCM');
insert into student (name, address) values ('Trần Văn Hùng Anh Minh Vy', '77 Nguyễn Thị Minh Khai, Q.3, TP.HCM');
insert into student (name, address) values ('Nguyễn Thị Kiều Trân Anh Vy', '98 Rạch Bùng Binh, Q.3, TP.HCM');
insert into student (name, address) values ('Lâm Thị Minh Hằng Tuyết Vy', '159 Nguyễn Đình Chiểu, Q.3, TP.HCM');
insert into student (name, address) values ('Đỗ Thị Hồng Ánh Minh Thư', '243 Bàn Cờ, Q.3, TP.HCM');
insert into student (name, address) values ('Nguyễn Văn Nhật Hào Khánh', '90 Nguyễn Sơn Hà, Q.3, TP.HCM');
insert into student (name, address) values ('Tôn Nữ Thị Thanh Hà Như Vy', '41 Kỳ Đồng, Q.3, TP.HCM');
insert into student (name, address) values ('Nguyễn Thị Phương Dung Như', '12 Nguyễn Phúc Nguyên, Q.3, TP.HCM');
insert into student (name, address) values ('Phan Văn Tấn Duy Khánh Vy', '33 Võ Văn Tần, Q.3, TP.HCM');
insert into student (name, address) values ('Nguyễn Thị Mỹ Duyên Bảo Vy', '299 Nguyễn Thượng Hiền, Q.3, TP.HCM');
insert into student (name, address) values ('Cao Thị Cẩm Tiên Nhã Anh Vy', '66 Bàn Cờ, Q.3, TP.HCM');

select * from student;

select * from student order by name asc;

