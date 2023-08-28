create database Af_salary;
use Af_salary;
create table department(
d_id int primary key,
d_name nvarchar(50)
);
create table position(
p_id int primary key,
p_name nvarchar(50)
);
create table qualification(
q_id int primary key,
q_name nvarchar(50)
);
create table salary(
s_id int primary key,
pos int foreign key references position(p_id),
depart int foreign key references department(d_id),
qua int foreign key references qualification(q_id),
moneys int
);
create table staff(
st_id char(10) primary key,
gender char(5),
name nvarchar(20),
surname nvarchar(20),
birthday date,
village nvarchar(50),
district nvarchar(50),
province nvarchar(50),
tel char(13),
email nvarchar(50),
pos int foreign key references position(p_id),
depart int foreign key references department(d_id),
qua int foreign key references qualification(q_id),
startwork date,
pic image
);
create table checch_in(
a_id int primary key,
staffs char(10) foreign key references staff(st_id),
pos int foreign key references position(p_id),
depart int foreign key references department(d_id),
date_in datetime,
date_out datetime,
amount int 
);
create table pay_saiary(
sa_id int primary key,
staffs char(10) foreign key references staff(st_id),
pos int foreign key references position(p_id),
depart int foreign key references department(d_id),
qua int foreign key references qualification(q_id),
basic_salary int foreign key references salary(s_id),
amount int,
atten int foreign key references checch_in(a_id),
hourss int,
moneys int,
pay_date date
);