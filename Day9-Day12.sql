
DAY - 9 :
****************
Numeric functions in sql;
------------------------- 
To perform the mathemactical
 
1)round();
--------
it return a round of values at specified no.of decimal places.

round(123.456,2);123.46
round(123.454,2);123.45
round(123.453,-1);120
round(123.453,-2);100
round(1540.785,-1)//1540
round(1540.785,-2)//1500
round(1540.785,-3)//1000

2)sqrtroot():
------------
it return a sqrt of value

3)power():
---------
select power(3,2);

4)mod();
------------
select mod(10,3);

5)ads();
---------
select abs(-100);

6)sign();
-----------
it return 0(0) or 1(+ve) or -1(-ve)
select sign(90);

7)Ceil():
--------------
it returns nearest higher value.
select celi(20.8);

8)floor():
------------
it returns nearest lower value.
select floor(20.4);

9)Rand():
-------------
it returns random decimal values between 0 and 1.
select rand();
select rand()*100;
select floor(rand()*100);

10)Greatest():
--------------------
it return maximum value in give values.
select greatest(20,70,30);

11)Least():
-------------
it return a minimum value in given values.
select least(20,70,30);

String functions in sql:

Upper():
---------
to convert all characters into uppercase
select upper('mysql');

Lower():
it convert all characters into lowercase
select lower('MYSQL');

length():
------------
it return a length of given string.
select length('mysql');

Char_length():
------------------
it return total count of characters into given string.
select char_length('mysql');

Substring():
-------------
to extract the particular range of string.
select substring('mysql developer',1,5);

left():
-------------
To return particular range of characters from left side
select left (' mysqldeveloper',7);

Right():
------------
to return particular range of character from right side
select right('mysqldeveloper',7);

concat():
------------
select concat('mysql','developer');

Concat_ws():
-----------
it is used combine the two or more strings separate with separator.
select concat_ws('-','mysql','developer');

Replace():
-----------
it is used to replace the old string to new string.
select replace('java','a','@');

Trim():
---------
it removes first and last spaces.
select trim(' mysql ');

Lpad():
----------
to add the character at to reach length of string
lpad('mysql',10,'*');

Rpad():
-----------
select rpad('mysql',10,'*');

Locate():
---------
to return a locate value in a string.
select locate('a','apple');




Day 10:
**********

1. What is a MySQL Storage Engine?
Answer: A storage engine determines how MySQL stores, retrieves, and manages data.
The commonly used engine is InnoDB.

2. What is InnoDB?
Answer: InnoDB is the default storage engine in MySQL. It supports:
Transactions
Foreign keys
Row-level locking
Crash recovery
ACID properties

3. What is a transaction?
Answer: A transaction is a group of SQL operations treated as one logical unit of work.
For example, transferring money from one account to another involves:
Deducting money from Account A.
Adding money to Account B.
Both operations should succeed together.

4. What is ACID?
Answer: ACID represents four properties of database transactions:
A – Atomicity: All operations succeed or all fail.
C – Consistency: Data remains valid before and after the transaction.
I – Isolation: Transactions do not improperly interfere with each other.
D – Durability: Committed data remains saved even after a system failure.

5. What is COMMIT?
Answer: COMMIT permanently saves changes made during a transaction.
COMMIT;

6. What is ROLLBACK?
Answer: ROLLBACK cancels changes made during the current transaction that have not been committed.
ROLLBACK;

7. What is SAVEPOINT?
Answer: A SAVEPOINT creates a temporary point inside a transaction to which you can roll back.
SAVEPOINT sp1;
Then:
ROLLBACK TO sp1;

8. What is AUTO_INCREMENT?
Answer: AUTO_INCREMENT automatically generates a new numeric value when a row is inserted.
Example: emp_id INT AUTO_INCREMENT PRIMARY KEY
If the last ID is 105, MySQL can automatically generate 106 for the next row.

9. What is an index?
Answer: An index is a database structure that helps MySQL find rows faster without scanning the entire table.
Example: CREATE INDEX idx_emp_name
ON employees(emp_name);
Important: Indexes can improve searching but require additional storage and can make INSERT, UPDATE, and DELETE operations somewhat more expensive.

10. What is a clustered index?
Answer: A clustered index determines how the actual table data is organized around an index key.
In InnoDB, the primary key is the clustered index.

11. What is a composite index?
Answer: A composite index is an index created using multiple columns.
Example:
CREATE INDEX idx_dept_salary
ON employees(department, salary);
It can be useful when queries frequently filter or sort using both columns.

12. What is a view?
Answer: A view is a virtual table based on a SQL query. It does not normally store the result as a separate copy of the underlying data.
Example:
CREATE VIEW high_salary_employees AS
SELECT *
FROM employees
WHERE salary > 60000;
Then:
SELECT *
FROM high_salary_employees;

13. What is a stored procedure?
Answer: A stored procedure is a set of SQL statements stored in the database that can be executed when needed.

14. What is a function in MySQL?
Answer: A function is a reusable program that accepts input and returns a value.
MySQL provides built-in functions such as:
COUNT()
SUM()
AVG()
ROUND()
UPPER()
LOWER()
MySQL also supports user-defined stored functions.

15. Stored Procedure vs Stored Function
Answer:
Stored Procedure	Stored Function
Called using CALL	Can be used in expressions
Can return result sets	Returns a value
Mainly used to perform operations	Mainly used to calculate/return a value
Does not have to return a value	Must return a value

16. What is a trigger?
Answer: A trigger is automatically executed when a specified database event occurs, such as:
INSERT
UPDATE
DELETE

17. What is a self join?
Answer: A self join is when a table is joined with itself.
It is useful for hierarchical data such as employees and managers.

18. What is a CROSS JOIN?
Answer: A CROSS JOIN returns the Cartesian product of two tables.
If Table A has 5 rows and Table B has 4 rows:
5 × 4 = 20 rows

19. What is a correlated subquery?
Answer: A correlated subquery is a subquery that depends on a value from the outer query.
It is evaluated in relation to each row considered by the outer query.

20. What is the difference between UNION and UNION ALL?
Answer: UNION combines results and removes duplicate rows.


DAY 11 :
************

DATE and TIME Functions :
===========================
1.Now():
-----------
it returns the current type and date
eg: select now();

2.CURDATE():
-------------
it returns the current date only.
eg: select curdate();

3.CURTIME();
--------------
it returns the current time only.
eg: select curtime(); 

4. YEAR():
--------------
it is used to extract the year in a date.
eg: select  year(curdate());

5. MONTH():
-------------
 it is used to ectract the month in  a date.
eg: select month(curdate());

6. DAY():
----------
it is used to extract day in a date.
eg: select day(curdate()); //21

7. DAYNAME():
-------------
it is used to extract day in a date and return dayname.
eg: select dayname(curdate()); //Friday

8. DATEDIFF()
---------------
it returns difference between two dates.
eg: select datediff(curdate(),'2026-06-19');

9. DATE_ADD():
-----------------
it is used to add the days ,or months or year in a  date.
eg:  select date_add(curdate(),interval 10 day);

Syntax():
select date_add(curdate(),interval value);
eg: select date_add(curdate() interval 10 day);

10. DATE_SUB():
----------------
it is used to subtract the days,months or years.
syntax: select date_sub(curdate(),interval 10 day);


11. DATE_FORMAT():
-------------------
it is used for custom function means it used to custom according to the user requirement.
eg: select curdate();// 2026-08-21(it is actual date)
syntax:
--------
select date_format(curdate(),'%d%m%y');(it is according to the user requirement)

select date_format(curdate(),'%d/%m/%y');

12. STR_TO_DATE():
--------------------
to convert string into a date.
eg: select('19-08-2026','%y%m%d);


SYSTEM FUNCTIONS:
~~~~~~~~~~~~~~~~~~~~~~
1. version():
------------------
it is used to return the current version of MySQL.
eg: select version();

2. database():
---------------
it is used to return the current database.
eg: select database();

3. user():
------------
it is used to current username and host.
eg: select user();

4. current_user():
-------------------
it returns only current user name.
eg: select current_user();

5. connection_id():
------------------------
connection id is unqiue  and it is provided by MySQL server.
eg: select connection_id();

6. last_insert_id():
-------------------------
the last_insert_id is used to know the value of last auto_increment value.
eg: select last_insert_id(); 


1. select now();
2. select curdate();
3. select curdate();
4. select emp_name,year(joining_date) from employees;
5. select emp_name,month(joining_date) from employees;
6. select emp_name,day(joining_date) from employees;sho
7. select emp_name,dayname(joining_date) from employees;
8.
9. select emp_name,datediff(current(),joining_date)
from employees where datediff(curdate(),joining_date)>1000;




1. What is a JOIN in MySQL?
A: A JOIN is used to combine data from two or more tables based on a related column.

2. What is an INNER JOIN?
A: INNER JOIN returns only the records that have matching values in both tables.

3. What is a LEFT JOIN?
A: LEFT JOIN returns all records from the left table and matching records from the right table.

4. What is a RIGHT JOIN?
A: RIGHT JOIN returns all records from the right table and matching records from the left table.

5. What is a SELF JOIN?
A: A SELF JOIN is a table joined with itself.

6. Where is SELF JOIN commonly used?
A: It is commonly used to find relationships such as employees and their managers.

7. What is a CROSS JOIN?
A: CROSS JOIN returns every possible combination of rows from two tables.

8. What is the difference between INNER JOIN and LEFT JOIN?
A: INNER JOIN returns only matching records, while LEFT JOIN also returns unmatched records from the left table.

9. What is UNION?
A: UNION combines the results of two or more SELECT queries and removes duplicate rows.

10. What is UNION ALL?
A: UNION ALL combines the results of two or more SELECT queries and keeps duplicate rows.

11. What is the difference between UNION and UNION ALL?
A: UNION removes duplicates, whereas UNION ALL keeps duplicates.

12. What is a table alias?
A: A table alias is a temporary short name given to a table.

13. Why are aliases used in JOINs?
A: Aliases make queries shorter, easier to read, and are especially useful when joining a table with itself.

14. How can you find records present in one table but not another?
A: Use a LEFT JOIN and check for NULL in the right table.

15. How can you find common records between two tables?
A: Use an INNER JOIN.

16. How do you find an employee's manager using SQL?
A: Use a SELF JOIN on the employee table.

17. Can a table be joined with itself?
A: Yes. This is called a SELF JOIN, and different aliases are used for the same table.

18. What happens if there is no matching record during an INNER JOIN?
A: That record is excluded from the result.

19. What is a subquery?
A: A subquery is a query written inside another SQL query.

20. What is the purpose of the ON clause in a JOIN?
A: The ON clause specifies the condition used to match records between tables.

DAY 12:
************
eid(auto_increment) ename esal
insert into emp(ename,esal) values ('jaya',10000);
select last_insert_id();//1
show table status like 'tablename';

set operators:
----------------
it is used to combine the two or more select queries.
1.union
2.unionall
3.intersect
4.except

select * from old_student
where in (select * from new_student);

select * from old_student
where in (select * from new_student);
except

joins:
----------
to combine the rows from 2 or more tables.

core joins:
----------------
1. inner join 
2. natural join 
3. equi join
4. non equi join

outer join:
--------------
1. left join or left outer join
2. right join
3. full join
