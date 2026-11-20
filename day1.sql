#syntax
#create database database_name;
create database user;

#use database_name;
use user; 

show databases;

#drop database database_name;
drop database user;

#Table creation
#create table table_name(col1 datatype constraint, col2 ....);
create table students(std_id int, std_name CHAR(20), 
email varchar(30), phone_no varchar(20), city char(10));

#desc -> describe, desc is a keyword, returns the structure of the table
desc students;

# --------------------------ALTER----------------------------
# alter usecases:
#1.to add and drop the column
#2.to modify the datatype and size
#3.to rename the column or table
#4.to add and drop constraints

#Adding a column
#alter table table_name add column col_name datatype;

alter table students add column joined_date date;

desc students;

#dropping column
#alter table table_name drop column col_name;
alter table students drop column joined_date;

#modifying datatype
#alter table table_name modify column col_name new_datatype;
alter table students modify column phone_no bigint;

#modifying size
alter table students modify column email varchar(40);

#rename column
#alter table table_name rename column old_col_name to new_col_name;
alter table students rename column std_id to student_id;

#rename table
#alter table table_name rename to new_table_name;
alter table students rename to student_profile;

desc student_profile;

alter table student_profile rename to stds;
desc stds;