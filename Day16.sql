DAY 16:
*************
corelated subquery:
---------------------
it means the subquery is depends on current row of outer query.
exists and not exsits are there in corelated subquery.


eg: 
1. select e.emp_name, e.salary,e.dept_id from employee e
     where salary > (select avg(salary) from employee e1
     where e1.dept_id = e.dept_id);
  
2. to find the employees whose salary is greater then of          minimum salary in same department:

     select e.emp_name, e.salary,e.dept_id from employee e
     where salary > (select min(salary) from employee e1
     where e1.dept_id = e.dept_id);


Exists:
-----------
if the table values are in existing then it is said to be exists.

eg: select c.* from customers where exists
(select o.customer_id from orders o where o.customer_id = c.customer_id)

2. using inner join to perform the same operation which is perforformed above

eg:  select c.* from customers c join orders o 
     on c.customer_id = o.customer_id;



Not Exists:
--------------
if the table values are not existing then it is said to be not exists.

eg:
    select c.* from customers c where not exists
    (select o.customer_id from orders o where o.customer_id = c.customer_id);
