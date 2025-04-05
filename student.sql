create database student;

use student;

create table student_tb (
	id int primary key auto_increment,
    name varchar(50),
    score double
);

insert into student_tb (id, name, score) values (1, 'Nguyen Van A', 9.6);
insert into student_tb (name, score) values ('Nguyen Van B', 9.8);

select * from student_tb;

update student_tb
	set name = 'Nguyen Van C'
where id = 2;

set sql_safe_updates = 0; -- Tat safe mode (Xoa du lieu khong can where id (all))
delete from student_tb;
set sql_safe_updates = 1; -- Bat safe mode

drop table
drop database student;