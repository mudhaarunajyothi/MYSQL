DAY-21:
**********
(03/09/26)

WINDOW FUNCTIONS:
~~~~~~~~~~~~~~~~~~~~
it is used to find the  row numbers and ranking of the tables.
they are of three types.

1.Ranking functions:
row_number()
rank()
dense_rank()
ntile()

2.Aggregate functions:
avg()
max()
min()
count()
sum()

3.Offset functions:
first_value()
lag()
lead()

syntax of window function:
---------------------------------
select columnlist,functionname over() as aliasname from tablename;

in window represented by over():
-------------------------------------
partition by----it is used to divide the data into group based
order by--------to sort the data into order based on column.

in over() we uses the partition by and order by in over function.

using row_number():us

select department,avg(salary) from employee group by department;
select emp_id,emp_name,department,row_number()
over(partition by emp_id) as eRowNum from employee;
select emp_id,emp_name,department,row_number()
over(order by emp_id) as eRowNum from employee;
select emp_id,emp_name,department,row_number()
over(partition by department) as eRowNum from employee;

using rank():

select emp_id,emp_name,salary,rank() over(order by salary desc) as rsalary from employee;

using dense_rank():

select emp_id,emp_name,salary,dense_rank() over(order by salary desc) as rsalary from employee;


select emp_name,salary,department,avg(salary) over(partition by department) as avgsal from employee;

select emp_id,emp_name,rank() over(partition by department order by salary) as drank from employee;

select emp_id,emp_name,department,salary,rank() over(partition by department order by salary desc) as drank from employee;

select emp_name,department,salary,rank() over(order by salary desc) as rsalary from employee;

select * from 
(select emp_name,department,salary,rank()
over(order by salary desc) as rsalary from employee) emp
where rsalary=3;

select * from 
(select emp_name,department,salary,rank()
over(partition by department order by salary desc)as rsalary from employee)emp
where rsalary=1;
get top 1 ranks in each department

select * from 
(select emp_name,department,salary,rank()
over(partition by department order by salary desc) as rsalary from employee) emp
where rsalary<=2;
it displays top 2 employees in each department

select * from 
(select emp_id,emp_name,row_number()
over(order by emp_id) as erowNumber from employee) as emp
where erowNumber=7;



mysql> select * from employees;
+--------+----------+------------+--------+------------+-----------+
| emp_id | emp_name | department | salary | hire_date  | city      |
+--------+----------+------------+--------+------------+-----------+
|    101 | Ravi     | IT         |  60000 | 2021-01-15 | Hyderabad |
|    102 | Priya    | IT         |  80000 | 2020-06-10 | Bangalore |
|    103 | Kiran    | IT         |  75000 | 2022-03-20 | Hyderabad |
|    104 | Anu      | HR         |  55000 | 2021-08-12 | Chennai   |
|    105 | Rahul    | HR         |  65000 | 2019-04-18 | Hyderabad |
|    106 | Sneha    | HR         |  65000 | 2020-11-25 | Bangalore |
|    107 | Arjun    | Sales      |  70000 | 2021-02-14 | Chennai   |
|    108 | Meena    | Sales      |  90000 | 2018-09-30 | Hyderabad |
|    109 | Vijay    | Sales      |  70000 | 2022-07-05 | Bangalore |
|    110 | Neha     | Finance    |  85000 | 2019-12-10 | Chennai   |
|    111 | Suresh   | Finance    |  75000 | 2021-05-22 | Hyderabad |
|    112 | Pooja    | Finance    |  85000 | 2020-02-17 | Bangalore |
+--------+----------+------------+--------+------------+-----------+
12 rows in set (0.00 sec)

mysql> SELECT
    ->     emp_id,
    ->     emp_name,
    ->     department,
    ->     salary,
    ->     ROW_NUMBER() OVER (ORDER BY salary DESC) AS sequential_no
    -> FROM Employee;
ERROR 1146 (42S02): Table 'win.employee' doesn't exist
mysql> SELECT
    ->     emp_id,
    ->     emp_name,
    ->     department,
    ->     salary,
    ->     ROW_NUMBER() OVER (ORDER BY salary DESC) AS sequential_no
    -> FROM Employees;
+--------+----------+------------+--------+---------------+
| emp_id | emp_name | department | salary | sequential_no |
+--------+----------+------------+--------+---------------+
|    108 | Meena    | Sales      |  90000 |             1 |
|    110 | Neha     | Finance    |  85000 |             2 |
|    112 | Pooja    | Finance    |  85000 |             3 |
|    102 | Priya    | IT         |  80000 |             4 |
|    103 | Kiran    | IT         |  75000 |             5 |
|    111 | Suresh   | Finance    |  75000 |             6 |
|    107 | Arjun    | Sales      |  70000 |             7 |
|    109 | Vijay    | Sales      |  70000 |             8 |
|    105 | Rahul    | HR         |  65000 |             9 |
|    106 | Sneha    | HR         |  65000 |            10 |
|    101 | Ravi     | IT         |  60000 |            11 |
|    104 | Anu      | HR         |  55000 |            12 |
+--------+----------+------------+--------+---------------+
12 rows in set (0.00 sec)

mysql> SELECT
    ->     emp_id,
    ->     emp_name,
    ->     department,
    ->     salary,
    ->     ROW_NUMBER() OVER (
    ->         PARTITION BY department
    ->         ORDER BY salary DESC
    ->     ) AS sequential_no
    -> FROM Employees;
+--------+----------+------------+--------+---------------+
| emp_id | emp_name | department | salary | sequential_no |
+--------+----------+------------+--------+---------------+
|    110 | Neha     | Finance    |  85000 |             1 |
|    112 | Pooja    | Finance    |  85000 |             2 |
|    111 | Suresh   | Finance    |  75000 |             3 |
|    105 | Rahul    | HR         |  65000 |             1 |
|    106 | Sneha    | HR         |  65000 |             2 |
|    104 | Anu      | HR         |  55000 |             3 |
|    102 | Priya    | IT         |  80000 |             1 |
|    103 | Kiran    | IT         |  75000 |             2 |
|    101 | Ravi     | IT         |  60000 |             3 |
|    108 | Meena    | Sales      |  90000 |             1 |
|    107 | Arjun    | Sales      |  70000 |             2 |
|    109 | Vijay    | Sales      |  70000 |             3 |
+--------+----------+------------+--------+---------------+
12 rows in set (0.01 sec)

mysql> SELECT
    ->     emp_id,
    ->     emp_name,
    ->     salary,
    ->     RANK() OVER (ORDER BY salary DESC) AS salary_rank
    -> FROM Employees;
+--------+----------+--------+-------------+
| emp_id | emp_name | salary | salary_rank |
+--------+----------+--------+-------------+
|    108 | Meena    |  90000 |           1 |
|    110 | Neha     |  85000 |           2 |
|    112 | Pooja    |  85000 |           2 |
|    102 | Priya    |  80000 |           4 |
|    103 | Kiran    |  75000 |           5 |
|    111 | Suresh   |  75000 |           5 |
|    107 | Arjun    |  70000 |           7 |
|    109 | Vijay    |  70000 |           7 |
|    105 | Rahul    |  65000 |           9 |
|    106 | Sneha    |  65000 |           9 |
|    101 | Ravi     |  60000 |          11 |
|    104 | Anu      |  55000 |          12 |
+--------+----------+--------+-------------+
12 rows in set (0.00 sec)

mysql> SELECT
    ->     emp_id,
    ->     emp_name,
    ->     salary,
    ->     DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    -> FROM Employees;
+--------+----------+--------+-------------+
| emp_id | emp_name | salary | salary_rank |
+--------+----------+--------+-------------+
|    108 | Meena    |  90000 |           1 |
|    110 | Neha     |  85000 |           2 |
|    112 | Pooja    |  85000 |           2 |
|    102 | Priya    |  80000 |           3 |
|    103 | Kiran    |  75000 |           4 |
|    111 | Suresh   |  75000 |           4 |
|    107 | Arjun    |  70000 |           5 |
|    109 | Vijay    |  70000 |           5 |
|    105 | Rahul    |  65000 |           6 |
|    106 | Sneha    |  65000 |           6 |
|    101 | Ravi     |  60000 |           7 |
|    104 | Anu      |  55000 |           8 |
+--------+----------+--------+-------------+
12 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM Employee
    -> WHERE salary = (
    ->     SELECT MAX(salary)
    ->     FROM Employee
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 5
mysql> select
    -> * from employees where salary = (select max(salary) from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql>
mysql>
mysql>
mysql> select * from employees where salary = (
    -> select max(salary) from employees);
+--------+----------+------------+--------+------------+-----------+
| emp_id | emp_name | department | salary | hire_date  | city      |
+--------+----------+------------+--------+------------+-----------+
|    108 | Meena    | Sales      |  90000 | 2018-09-30 | Hyderabad |
+--------+----------+------------+--------+------------+-----------+
1 row in set (0.01 sec)
