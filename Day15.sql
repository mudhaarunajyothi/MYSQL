
DAY-15:
***********
Cross join:
--------------
syntax: select e.emp_name,d.dept_name from
        employee e cross join department d;

natural join:
-----------------
syntax:
     select e.emp_name,d.dept_name from employee e
     natural join department d;

   
SUBQUERY:
~~~~~~~~~~~~~~
write a query inside the another query.
the sub query enclosed with in paranthesis.

eg: select query condition(subquery);

singlerow subquery:
---------------------
the subquery returns only one row is said to be singlerow subquery.

using >,<,=,>=,<= etc.

eg: 1. select * from products where price = 
       (select max(price) from products);
    2. to print the second max(price):
       select max(price) from products where price
       < (select max(price) from products);

multirow subquery:
---------------------
the subquery returns more than one row then it is said to be multirow subquery.

using Any,all,some,in

eg: select price from products where category = 'Furniture'

    1. if it satisfies any one of the condition we use 'any':
       syntax: select * from products where price < any
       (select price from products where category = 'Furniture');
     
    2. using all:
       syntax: select * from products where price < all
       (select price from products where category = 'Furniture');
    
    3. using some:
        syntax: select * from products where price < some
       (select price from products where category = 'Furniture');


    
nested subquery:
---------------------
multilevel of subquery is call as nested subquery

eg: 1. select * from products where price =
       (select max(price) from products where price <
       (select max(price) from products));

