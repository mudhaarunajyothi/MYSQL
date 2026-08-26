DAY-4:
******** 
adding constraints to the exsiting table:
---------------------------------------------
create table emp(id int, age int, name varchar(20),address varchar(20),dpid int,phonenum bigint);

alter table emp add constraint pk_id primary key(id); (here pk_id id constraint name)

alter table emp drop primary key;

unique:
-----------
alter the emp add constraint uk_ph unique(phonenum); 

alter table emp drop constraint uk_ph;


check:
--------
syntax: alter table emp add constraint chk_age check(age>18);

how to drop the check constraint: alter table emp drop constraint chk_age;

default and not null:
------------------------
Not Null:
----------
how to add the not null value:
alter table emp modify name varchar(20) not null;

how to remove the not null:
alter table emp modify name varchar(20) Null;                
 
Default:
------------
how to add default value:
alter table emp modify address varchar(20) default "hyd";
alter table dept1 add constraint fk_did foreign key(did)references emp(id)


how to drop the default constraint:
alter table emp modify address varchar(20);


procedure integrity constraint:
----------------------------------
referential integrity constraint:
-----------------------------------
to ensure using the foreign key constraint.

entity integrity constraint:
---------------------------------
to ensure using the primary key

domain integrity constraint:
--------------------------------
using unique.


DML commands:
==================
DML stands for data manipulation language.
the main purpose of dml commands is used to insert or manipulate data into a tables,views...etc.
insert
update
delete

insert:
----------
1st way (when we know the columns)
-------------------------------------
insert into employee values(101,'anu','khammam',9029020299,202);

2nd way: (we know the number of columns but dont no the order)
-------------------------------------------------
insert into employee(id, name, age, address,phonenum, did)
values(101,"ram",20, "hyd");

3rd way:(used to assign values to the specific column)
--------------------------------------------------------
insert into employee(id,name,age)
values(103,'sam',20);

4th way:(to insert the multiple records at a time)
-------------------------------------------------------
insert into employee(id,name,address,age)
values(104,'vijay','vizag',24),
(105,'madhu','warangal',25);


DQL command:
================
data query

create table employees(emp
INSERT INTO employee
(emp_name, department, salary, experience, status)
VALUES
('Ravi',   'IT',        60000, 4, 1),
('Anil',   'HR',        45000, 3, 2),
('Priya',  'Finance',   70000, 6, 4),
('Sneha',  'IT',        85000, 7, 3),
('Kiran',  'Sales',     35000, 2, 1),
('Arjun',  'IT',        55000, 5, 5),
('Divya',  'HR',        40000, 4, 2),
('Rahul',  'Finance',   65000, 8, 6),
('Meena',  'Sales',     30000, 1, 1),
('Suresh', 'IT',        95000, 10, 7),
('Pooja',  'Marketing', 50000, 3, 2),
('Vijay',  'Finance',   48000, 4, 4),
('Neha',   'IT',        72000, 6, 3),
('Amit',   'Sales',     42000, 5, 1),
('Swathi', 'Marketing', 58000, 7, 5);





create table products(product_id int primary key auto_increment, product_name varchar(50),price decimal(10,2), quantity int);


INSERT INTO products
(product_name, price, quantity)
VALUES
('Laptop',       55000, 10), 
('Mouse',         800, 25),
('Keyboard',     1500, 15),
('Monitor',     12000, 8),
('Headphones',   2500, 20),
('Webcam',        3500, 12),
('Printer',      15000, 5),
('SSD',           6000, 18),
('RAM',           4000, 30),
('USB Cable',      500, 40),
('Router',        3000, 10),
('Speaker',       4500, 7);





Assignment2:
1q:  select emp_name,salary,salary+5000 from employees;
2a:select emp_name,salary as current_salary,salary *1.10 from employees;
3a: select emp_name,salary > 50000 from employees;
4a: select emp_name, salary >= 30000 or salary <= 60000 from employees;


assignment 1 and 2 completed and posted in linkedin also


assignment 3: clauses;

11a:select dept,count(*) as tcount from employee group by dept having tcount>5;
12a: select dept,avg(sal) from employee group by dept having avg(sal)>50000;
15a: select gender,sum(sal) as gsal from employee group by gender having gsal>200000;
17a:select job,count(*) as jobec from employee group by job;
 select job,count(*) as jobec from employee group by job having jobec>=2;


DAY - 5:
***********
create table new_table like old_table;
create table employee like emp;

insert into employee select * from emp;

auto_increment:
----------------
it is the feature of MySQL.it is automatically generate the number
when we are insert the new row/record

create table student(id int primary key auto_increment,
             name varchar(20),age int;
             );

insert into student(name,age)values
('sam',25),('ram',30),('geetha',60);

to retrive few columns in a table:
---------------------------------------
select name,age from student;

where cluse:
-------------
where cluse is used to filter the rows/records in a table based on condition

operators:
----------------
Arithematic operators:
------------------------
+,-,*,/,%

Relational or Comparison operators:
-------------------------------------
=,>,<,>=,<=,!= or <>
10<50
20>40

Logical operators:
-----------------------
and,or,not

20<40 and 10>70//f
20<40 or 10>70//t

not 20>80;t

bitwise operators:
----------------------
&,|,^,<<,>>

2&3 

INSERT INTO employee
(emp_name, department, salary, experience, status)
VALUES
('Ravi',   'IT',        60000, 4, 1),
('Anil',   'HR',        45000, 3, 2),
('Priya',  'Finance',   70000, 6, 4),
('Sneha',  'IT',        85000, 7, 3),
('Kiran',  'Sales',     35000, 2, 1),
('Arjun',  'IT',        55000, 5, 5),
('Divya',  'HR',        40000, 4, 2),
('Rahul',  'Finance',   65000, 8, 6),
('Meena',  'Sales',     30000, 1, 1),
('Suresh', 'IT',        95000, 10, 7),
('Pooja',  'Marketing', 50000, 3, 2),
('Vijay',  'Finance',   48000, 4, 4),
('Neha',   'IT',        72000, 6, 3),
('Amit',   'Sales',     42000, 5, 1),
('Swathi', 'Marketing', 58000, 7, 5);

products

(product_id INT AUTO_INCREMENT
product_name VARCHAR(50)
price DECIMAL(10,2)
quantity INT);

INSERT INTO products
(product_name, price, quantity)
VALUES
('Laptop',       55000, 10),
('Mouse',         800, 25),
('Keyboard',     1500, 15),
('Monitor',     12000, 8),
('Headphones',   2500, 20),
('Webcam',        3500, 12),
('Printer',      15000, 5),
('SSD',           6000, 18),
('RAM',           4000, 30),
('USB Cable',      500, 40),
('Router',        3000, 10),
('Speaker',       4500, 7);

create table employee(emp_id INT AUTO_INCREMENT primary key,
emp_name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
experience INT,
status INT);

(product_id INT AUTO_INCREMENT primary key,
product_name VARCHAR(50),
price DECIMAL(10,2),
quantity INT);

DAY - 6
************
predicates/special operators:
------------------------------
it is a condition.this operators mainly used to range of comparision.
between
in
is null
like

between:
--------------
to retrive the values between range of 10 to 20
value>=10 and value<=20;
value between 10 and 20;
value not between 10 and 20;

In:
------
val = 10 or val = 20
val in(10,20);
val not in(10,20);

is null:
-----------
it returns null value rows.
name is null;
name is not null;

** like:
---------
like operator is used to pattern matching
it contains 2 wildcards.

1) _(underscore):
--------------------
it is represent the single character.
name like '__'; 4 underscore

2)%:
-------
it is indicate zero or more characters
name like 'a%';
name like '%a%';
name like '%a_';
name like '%h';
name not like '%h%';
name not like 'a%';

isNull():
----------
salary:
-----------
20000
null  it wll assign to 1
40000
null
3000
the row doesnot contain null function it assign value 0

select salary isNull (salary) from emp;
salary:
------------
------------
0
1
0
1
0

** ifNull function():
------------------------
select salary ifNull(salary,1000) from emp;

salary:
--------
20000
null
40000
null
3000
salary:
----------
20000
1000
40000
10000
3000
 
update:
--------
update command mainly used to manupulate data

update table_name set updatecondition;
update table_name set updatecondition where condition;

delete:
---------
delete command is used to remove all data or particular data.

syntax:
-------
delete from tablename;//total data
delete from tablename where condition;

drop:
---------
totaldata+structure;

delete:
--------
total data or particular data but not structure.

truncate:
---------
truncate table tablename;
remove total data immediately but not structure.

DAY - 7:
*************
Using delete operation to delete particular row:
------------------------------------------------------
Ex:Query: delete from student1 where name = 'sam';

To delete all data:
----------------------
Query:delete from student1;
To check:select * from student1;

Using truncate operation:
-----------------------------
Query: truncate table student;
To check: select * from student;

Using: Drop operation:
---------------------------
Query: Drop table student;
To check: show tables;

*Limit:
-------
Limit is used to restrict the restrict the retrive rows
Syntax: select * from product limit no.of rows;
Eg:1)select * from product limit 5;
   2)select * from product limit 3;

*Agreegate Functions:
The main purpose of agreegate functions is used to perform mathematical
 calculation in multiple rows and return a single value.

It has 5 agreegate functions:
1)Count(*);
2)Sum (Column name);
3)Avg (Column name);
4)Max (Column name);
5)Min (Column name);

1)Count(*): It returns the no.of rows count value:
Syntax:1)Select count(*) from product;
       2)Select count(*) as total_count from product;

2)Sum(Column name):It returns a sum of all values in a column
Syntax:1)Select sum(quantity) from product;

3)Avg(Column name):It returns a avg of all values in column name
Syntax: Select avg(quantity) from product;

4)Max(Column name):To return a maximum value in a column name.
Syntax: Select max(price) from product;

5)Min(Column name):To return a minimum value in column name.
Syntax: Select min(price) from product;

Group by:
------------
To divide the data into a group of same values.
Syntax:
1)Select category from product group by category;

2)To count the Categories persons:
Syntax:
Select category,count(*) from product group by category;

3)To find the total quatity of each category:
Syntax:Select category,sum(quantity) from product group by category;

4)To find the avg quantity of each category:
Syntax:Select category,avg(quantity) from product
group by category;

5)Find the max price of each category:
Syntax:Select category,max(price) from product
group by category;

6)Find the min price of each category:
Syntax:Select category,min(price) from product
group by category;

DAY - 8:
*************
how to add the new column an existing table at particular place.

create table student(id int,name varchar(20),age int);

alter table student add column email varchar(20) first;

alter table student add column dob date after name;

cse 10
ece 12
mech 5
civil 8

select dept,count(*) from student group by dept;

having cluse:
----------------
the having cluse is used to filter the groups.
the having cluse is used to condition for aggregate function.

find the dept whose dept students is greater 10?
----------------------------------------------------------
select dept,count(*) from student group by dept;
select dept,count(*)as tcount from student group by dept having tcount>10;
to find the max price of each category and retrive only which categories maximum price
is greater than 50000.

select category,max(price) from product group by category;

order by:
-------------
order by cluse is used to sort values based on column
syntax:
------------
Asc:it represent ascending order.
Desc:it represent decending order.

the default nature of order by cluse in ascending order.

select * from product order by price;

find each category count and to retrive categories is ace order

select category,count(*) from product group by category order by tcount;

writing order:
-----------------
where
group by
having
order by
limit
 
Distinct:
-------------
it is used to remove the duplicates or find the unique data.
