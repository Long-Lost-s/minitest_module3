create database student_management;
create table Classes(
id int primary key,
name varchar(50) not null,
language varchar(50) not null,
description text not null
);

create table Address(
id int primary key,
address varchar(250) not null
);
-- id, fullname, address_id, age, phone (unique), classes_id
create table Students(
id int primary key,
fullname varchar(100) not null,
address_id int,
foreign key (address_id) references Address(id),
age int not null,
phone varchar(15) not null unique,
classes_id int,
foreign key (classes_id) references Classes(id)
);

create table Course(
id int primary key,
name varchar(50) not null,
description text not null
);

-- id, course_id, student_id, point
create table Point(
id int primary key,
course_id int,
foreign key (course_id) references Course(id),
student_id int,
foreign key (student_id) references Students(id),
point decimal(5,2)
);

alter table Address rename column adress to address;
alter table Address modify column id int primary key auto_increment;

SELECT * FROM Students WHERE fullname LIKE 'Nguyen%';

SELECT * FROM Students WHERE fullname LIKE '% Anh%';

SELECT * FROM Students WHERE age BETWEEN 15 AND 18;

SELECT * FROM Students WHERE id IN (12, 13);