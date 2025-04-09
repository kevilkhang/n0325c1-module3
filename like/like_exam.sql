create database like_exam;

use like_exam;

create table student(
id int primary key auto_increment,
name varchar(50) not null
);


insert into student (name) values ('Nguyễn Thị Hoàng Tuyết Mai');
insert into student (name) values ('Nguyễn Thị Thanh Vân');
insert into student (name) values ('Trần Văn Hữu Nở');
insert into student (name) values ('Lê Thị Mỹ Duyên');
insert into student (name) values ('Phan Văn Minh Nhật');
insert into student (name) values ('Trần Thị Bích Trâm Nhã Vy');
insert into student (name) values ('Vũ Thị Bích Nở');
insert into student (name) values ('Nguyễn Văn Trung Kiên');
insert into student (name) values ('Võ Thị Thanh Thảo');
insert into student (name) values ('Phạm Văn Trường Thanh Vỹ');
insert into student (name) values ('Lâm Văn Như Ngọc');
insert into student (name) values ('Tôn Nữ Thị Kim Vỹ');
insert into student (name) values ('Lê Thị Kim Ngân Minh Châu');
insert into student (name) values ('Nguyễn Thị Thảo Nhi');
insert into student (name) values ('Bùi Thanh Vương Hào');
insert into student (name) values ('Võ Thị Mỹ Duyên Thanh Tâm');
insert into student (name) values ('Nguyễn Thị Mai Hương');
insert into student (name) values ('Lưu Thị Hồng Nhung');
insert into student (name) values ('Trần Thị Tuyết Nở');
insert into student (name) values ('Ngô Văn Đạt');
insert into student (name) values ('Nguyễn Thị Hồng Diễmm Như Ý Vy');
insert into student (name) values ('Trần Thị Bảo Trân Nhã Khánh');
insert into student (name) values ('Lê Thị Ngọc Mai Tuyết Nhung');
insert into student (name) values ('Nguyễn Thị Thanh Trúc Bảo Vy');
insert into student (name) values ('Võ Văn Khánh Linh Nhã Hân');
insert into student (name) values ('Nguyễn Thị Kim Ngân');
insert into student (name) values ('Đỗ Văn Quang Vinh');
insert into student (name) values ('Lê Thị Kim Ngân Minh Châu');
insert into student (name) values ('Cao Thị Bảo Châu');
insert into student (name) values ('Phạm Văn Trường Thanh Vỹ');
insert into student (name) values ('Nguyễn Thị Diệu Hằng');
insert into student (name) values ('Phạm Văn Tấn Nở');
insert into student (name) values ('Nguyễn Thị Hoàng Tuyết Mai');

select * from student;

-- a. Những học sinh có họ tên bắt đầu bằng từ Nguyễn.
select * from student where name like 'Nguyễn%';

-- b. Những học sinh có họ tên kết thúc bằng từ Nở.
select * from student where name like '%Nở';

-- c. Những học sinh có họ tên chứa từ Thị.
select * from student where name like '%Thị%';

-- d. Những học sinh chứa từ Thị ở giữa (không được chứa ở đầu và ở cuối).
select * from student where name like '%Thị%' and name not like 'Thị%' and name not like '%Thị';

-- e. Những học sinh có họ tên với độ dài là 30 ký tự (kể cả khoảng trắng).
select * from student where char_length(name) = 30;

-- f. Những học sinh có họ tên với độ dài tối đa là 30 ký tự.
select * from student where char_length(name) <= 30;

-- g. Những học sinh có họ tên với độ dài tối đa là 30 ký tự và bắt đầu bằng ký tự N.
select * from student where char_length(name) = 30 and name like 'N%';

-- h. Những học sinh có họ tên bắt đầu bằng các ký tự: N, T, V.
select * from student where name like 'N%' or name like 'T%' or name like 'V%';

-- i. Những học sinh có họ tên không được bắt đầu bằng các ký tự: N, T, V.
select * from student where name like '%N' and name not like 'N%' or name like '%T' and name not like 'T%' or name like '%V' and name not like 'V%';

-- j. Những học sinh có họ tên với phần họ có đúng 4 ký tự.
select * from student where name like '____ %';

drop table student;
