DAY-1:
*********
data:
----------
collection of raw facts ,figure, symbol
it is meaningless ang uprocessed.

information:
-------------
the date is processed or meaningfull data.
eg: stdid = 102; 

File Management System(FMS):
-----------------------------
Key functions of file management system:

1) File create
2) file open
3) file delete
4) file read
5) share data
6) t provide access

Drawbacks of FMS:
-----------------
1) data inconsistency
2) less security
3) data redundancy
4) backup / recovery
5) data manipulation

Database:
----------
database is a tool it is used to store data.

Management system:
------------------
to manage data, like retrive, update, delete data

DBMS:
---------
1)  DBMS stands for Database Management System.
2) It is a software
3) the main purpose of dbms is used to store data in permanetally,
and manage data.

Advantages of DBMS:
------------------------
1) reduce dataredundency.
2) to provide more security.
3) to improve data inconsistency
4) possible to recover and backup the data
5) to maintain readability

Types of DBMS:
--------------
1) NoSQL database :
--------------------
the data is stored into the unstructured format.
eg: mongodb, postgrace sql

2) RDBMS:
-----------
it is stands for relational database management system.
in rdbms the data stored into rows and colums(table format).
the data is stored into the structure format.
eg: MySQL, oracle..etc

Advantages of MySQL:
------------------------
it is a database.
in MySQL data is stored into the table format.
in MySQL provide relation ships.
easy to maintain the data
it is open source database
it is free of cost

field: eg: studentid = 101
record: collection of fields.
studid=101,sname='rahul',cource='da'
table: collection of records of fields.

Q: what is the difference between MySQL and oracle sql


how to open MySQL toget it command is :MySQL -u root -p

DAY-2:
******
Data models:
-----------------
data model is way of organising the data and representing the data,how to store data, how to manipulate the data into dbms.

types of data models:
------------------------
1) hierarchical model:
----------------------
a)the organized data into a tree like structure (parent and child).
b)every child contain only one parent.
c)every parent an have multiple childs.
d)in that model easy retrive and maintain the data.
e)in that above model not comfortable for maintain complex relationships.
eg: institute----course----students

2)network datamodel:
-----------------------
a)the data is organised into nodes(entities) and edges(relationships).
b)in that mode one parent contain many childs.
c)one child can have many parents.

d)it is more flexible compared to hierarchical model.
eg: one student can take multiple courses.
---
each course learn multiple students.

3)object oriented data model:
-----------------------------

all the data represented at objects.
every object can have 2 properties. i.e, properties and behaviours.

4)Relational data model:
-----------------------
the data is stored into a tables with columns(fields) and rows(records). 
eg; stuent:sid, sname...etc

DataModel Levels:
------------------
1)conceptual level 
2)logical level
3)physical level

INTRODUCTION OF SQL:
----------------------

1) sql stands for structure query language.
2) it is used to communicate with databases such as MySQL, oracle, PostgreSQL

USING SQL LANGUAGE:
------------------------

1)to create the delete structure in database.
2)to insert ,update and delete data 
3)easy to retrive the data into database
4)to provide the control access

sql language is divided into different categories(sub categories or sub language):
------------------------------------------------------------------------------------
1)DDL:
---------
DDL stands for data definition language.it is used to create and manipulation language
database. such as tables, views, database and schema
i)create
ii)alter
iii)drop
iv)truncate
v)rename

2)DML:
-----------
DML stands for data manipulation language.it is used to add, update and delete
i) insert
ii)update
iii)delete

3)TCL:
----------
TCL stands for transactional control language. it is used to transactions.
i)commit;
ii)rollback;
iii)savepoint;

4)DQL:
---------
DQL stands for data query language . it is used to retrive the data.
i)select

5)DCL:
----------
DCL stands for data control language. it is used to provide control access for database.
i)grant
ii)revoke

Data types in SQL:
-------------------

1) Numeric datatypes
--------------------------
tinyint--------it store very small amount of data
smallint-------
mediumint-------
int------------
bigint---------
float----------
decimal(p,s)--------(3,2)(total number of digits before decimal point, total number of digits after decimal point)
boolean-------true / 1 or false / 0


2) String datatype
----------------------
char()------it contains fixed length --eg: char(20);
varchar()---it contains variable length--eg: varchar(20);
text------
enum------it is select only one value in a predefined list.--eg: course Enum('java','python', 'da')


3) Date and Time datatypes
---------------------------
date-----'yyyy-mm-dd'
time------'hh-mm-ss'
datetime---'yyyy-mm-dd hh-mm-Ss'
timestamp----current time

DAY - 3
************
constraints:
-------------
coonstraints are used to rules applied in table columns. The main purpose of constraints are used to ensure data consistency, data integrity , data accuracy.

In Sql we have the 6 constraints.
1)unique
2)not null
3)primary key
4)foreign key
5)check
6)default

1) Unique:
-----------
ensure all the values are unique in a column.
eg: std_id

2)not null:
------------
every column must contain a value.
eg: names

3)primary key:
-----------------
combination of not null and unique.
eg:adhaar_id,

4)foreign key:
------------------
it is used to maintain the relationship between tables.
eg: customer, menu

5)check:
----------
the column values must be contains to above mention the range of values.
eg: age, marks

6)default:
-------------
if in case no insert any date in that column that time automitacally to insert default values.
eg: address

DDL Commands:
-------------------------------
create:
---------------------------------------------------------
create table table_name(col1 datatype constraint_name,col2 datatype........)
id
name
address
age

query: create table employee(id int,name varchar(20), address varchar(20));

show databases;
create database;
use da22;
show tables;
create table employee(id int,name varchar(20), address varchar(20), age int);
show tables;
desc table_name; eg: desc employee;  (to see or it shows the structure of table)
describe table_name;
query: is show create table employee; (--- to see the total structure table)

query: create table employee1 like employee;  (to create another table --)

desc employee1;

Alter:
--------------------------------------------------------------
add column:
------------
syntax: alter table table_name add column column_name decimal(10,2);
eg: alter table employee add column salary decimal(10,2);
to see the again created table now --> desc employee;

to add multiple columns:
query: eg: alter table employee add column salary decimal(10,2), phonenum bigint;

to remove column:
------------------
query : syntax: alter table table_name drop column colname;
eg: alter table employee drop column salary;
to check whether column deleted or not use:: desc employee;

rename column:
---------------
alter table table_name  rename column old_colname to new_colname;
eg:alter table employees rename id to eid; 


to remove multiple columns:
syntax:  alter table table_name drop column colname, drop column columnname ....;

modify datatype:
-----------------
alter table table_name modify name colname updatedatatype;
eg: alter table employee modify name varchar(100);

eg 2: alter table employee modify id bigint;

show them : desc employee;

drop:
---------
drop table table_name;
eg: drop table employee1;


rename:
----------
rename table old to new_name;
eg: rename table employee to employees;


Use all the constraints and create one table:
-------------------------------------------------

employee:
==========
id, name , address, age ,phonenum

creating table: 
create table employee(id int primary key,
			name varchar(20) not null,
	                address varchar(20) default 'hyd'
			age int check (age>0 and age<120),
			phonenum bigint unique);

create table dept(did int,dname varchar(20),
		  foreign key(did) references employee(id));
