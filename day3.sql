use user;

desc depts;

create table customers(
c_id int primary key,
c_name char(20) not null,
age int,
city varchar(20) default "VJD");

desc customers;

create table orders(or_id int primary key,
or_date DATE not null,
amount decimal(10, 2) check (amount > 100),
c_id int,
foreign key(c_id) references customers(c_id));

desc orders;

-- inserting values into customers 
insert into customers values (1, "sai", 21, null);

select * from customers;

insert into customers values(2, "veera", 32, "");

insert into customers values (3, "Hani", 21, "Beng"), (4, "Mani", 22, "VJD");

-- inserting values into orders 
insert into orders values(101, '2026-02-01', 150, 1);

select * from orders;

insert into orders values(102, '2025-03-02', 1000, 2);

insert into orders values(103, '2026-02-03', 1300, 1), (104, '2024-05-03', 150, 1);


select * from depts;

select * from employees;

-- inserting  values to particular columns

insert into employees (emp_id, emp_name, email) values (5, "Pavan", "pavan@gmail.com");

insert into employees (emp_id, emp_name, depts_id) values (6, "krishna", 101);

insert into employees (emp_id, emp_name, salary, depts_id) values (7, "Kavya", 26000, 102);


#update table_name set col_name=value where emp_id=value
update employees set email="krishna@gmail.com" where emp_id = 6;

select * from employees;

update employees set depts_id = 102 where emp_id=5;

# Increase the salary by 10% for emps working in 101 depts
update employees set salary = salary*1.1 where depts_id=101;

#Truncate -> to remove only data  and table will be present

truncate depts;

truncate employees;

drop table employees;
select * from employees;
select * from depts;

#drop -- removes both the data  and the table
#truncate -- removes only the data but the table structure will be there

#students(std_id, std_name, email, phone_no, age, city, c_id)
#courses (c_id, c_name)


create table courses(c_id int, c_name char(30));

create table students(std_id int, std_name char(30), email varchar(30), phone_no varchar(20), age int, c_id int);

desc courses;
desc students; 




