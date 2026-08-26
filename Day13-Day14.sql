DAY -13:
***********
assignment:joins

1.
mysql> select e.emp_name,d.dept_name from employee e
    -> inner join department d
    -> on e.dept_id = d.dept_id
    -> where d.dept_name in('Finance','Sales');

2.
mysql> select emp_name from employee
    -> union all
    -> select dept_name from department;

3.
mysql> select d.dept_id from department d
    -> left join employee e on
    -> d.dept_id = e.dept_id
    -> where e.dept_id is null;

4.
mysql> select e.emp_name,d.dept_id from employee e
    -> inner join department d
    -> on d.dept_id = e.dept_id;

5.
mysql> select e.emp_name,e.salary,d.dept_name,d.location
    -> from employee e left join department d
    -> on e.dept_id = d.dept_id;

6.


7.
mysql> select e.emp_name,e.manager_id from employee e
    -> join employee m
    -> on e.manager_id = m.emp_id;


8.


9.


10.
mysql> select e.*,d.dept_name from employee e join
    -> department d on e.dept_id = d.dept_id
    -> where e.salary between 45000 and 70000;

basic level:
-------------
1.
mysql> select e.emp_name,d.dept_name from employee e
       inner join department d
       on e.dept_id = d.dept_id;

2.
mysql> select e.emp_id,e.emp_name,d.location from employee e
    -> inner join department d
    -> on e.dept_id = d.dept_id;

3.
mysql> select e.emp_name,e.salary,d.dept_name from employee e
    -> inner join department d
    -> on e.dept_id = d.dept_id;

4.
mysql> select e.emp_name,d.dept_name from employee e
    -> inner join department d
    -> on e.dept_id = d.dept_id;

5.
mysql> select e.emp_name,d.location from employee e
    -> left join department d
    -> on e.dept_id = d.dept_id;



DAY -14:
************
Self join:
----------------
the table join with itself.

eg: eid ename m_id
    101  A    102
    102  B    NULL
    103  C    102
    104  D    103

query: select e.eid from employee e join employee m
on e.m_id = m.eid;//102 103

EquiJoin:
-----------
to join the two or more tables using = operator.

syntax: select co1,col2 from tablename join tablename on col1=col2;

eg: select e.*,d.* from employee e join department d on e.dept_id = d.dept_id;

Non EquiJoin:
---------------
to join the one or more tables using other than = operator. such as using >,< and 
between etc.

syntax:
 select e.emp_name,d.dept_name,e.salary from employee e
    -> join department d on e.dept_id = d.dept_id
    -> where e.salary > 50000;

