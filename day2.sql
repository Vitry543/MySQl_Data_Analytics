use user;

desc stds;

#rename table ---by using RENAME COMMAND
#rename table old_table_name to new_table_name;

rename table stds to students;

desc students;

drop table students;


#creation of table using constraints

create table depts(depts_id int primary key,
dept_name varchar(10));

desc depts;

create table employees(emp_id int primary key,
emp_name varchar(30) not null, 
salary decimal(10, 2) check (salary >= 25000),
email varchar(30) unique,
city char(10) default 'hyd',
depts_id int,
foreign key(depts_id) references depts(depts_id));
# foreign key(child_col_name) references parent_table_name(parent_col_name)

desc employees;

#data insert
#insert into table_name values();

#single record
insert into depts values(101, 'IT');

select * from depts;

#multiple records
insert into depts values(102, "sales"), (103, "HR");

insert into depts values(104,'Finance');

insert into employees values
(1, "sai", 30000, "sai36@gmail.com", "blr", 101);

select * from employees;

insert into employees values
(2, "veera", 25000, "veera@gmail.com", "vjd", 101);

insert into employees values
(3, "Satya", 27000, "sa@gmail.com", "hyd", 103);

insert into employees values
(4, "Charan", 35000, "Cha@gmail.com", "hyd", 104);

