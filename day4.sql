use user;

desc courses;
desc students;

#adding constraints
#add primary key
#alter table table_name add constraint constraint_name primary key(col_name);

alter table courses add constraint prk_cid primary key(c_id);
desc courses;

alter table students add constraint pk_sid primary key(std_id);
desc students;

#add unique key
alter table students add constraint unq_email unique(email);

#add check constraint
#alter table table_name add constraint constraint_name check(condition);
alter table students add constraint chk_phno check(phone_no > 0);

-#add default constraint
#alter table table_name alter column col_name set default "value";
alter table students alter column age set default '18';

#add not null constraint
#alter table table_name modify column col_name datatype not null;
alter table students modify column std_name char(30) not null;
desc students;

#add foreign key
#alter table table_name add constraint constraint_name foreign key(child_col_name) references parent_table_name (parent_col_name);
alter table students add constraint fk_cid foreign key(c_id) references courses(c_id); 
desc students;
desc courses;

#----------------------- dropping constraints-----------------------
#drop primary key 
#alter table table_name drop primary key;
alter table students drop primary key;

#drop unique key
#alter table table_name drop constraint constraint_name;
-- or
#alter table table_name drop index constraint_name;
alter table students drop constraint unq_email;
desc students;

#drop check constraint
#alter table table_name drop constraint constraint_name;
-- or
#alter table table_name drop check constraint_name; 
alter table students drop constraint chk_phno;
desc students;

-- drop foreign key
#alter table table_name drop foreign key constraint_name;
alter table students drop foreign key fk_cid; 

alter table courses drop primary key;
desc courses;

#----------------drop default----------------
-- alter table table_name alter column col_name drop default;
alter table students alter column age drop default;

 
#----------------drop not null----------------
-- alter table table_name modify column col_name datatype null;
alter table students modify column std_name char(30) null; 

alter table students modify column std_id int null;
desc students;

alter table courses modify column c_id int null;
desc courses;
