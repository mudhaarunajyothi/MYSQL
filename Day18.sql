
Day - 17

31|8|2026

TCL commands : transaction control language
it is mainly used for banking transaction. 
1.commit
2.rollback
3.savepoint
transaction : it is a group of sql operations 
the group of operation represent a single unit.
transaction states:
1.begin or start, 2.read and write ,
3.commit (or) rollback :
if transaction is successful and to save it permanently use commit
 if transaction is in successful and to restart we use rollback
,4.save point: to check the transaction we use save points
 
mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 50000.00 |      10 |          3 |
|    102 | Kiran    | 45000.00 |      10 |          2 |
|    103 | Anita    | 65000.00 |      20 |          5 |
|    104 | Priya    | 70000.00 |      20 |          6 |
|    105 | Sneha    | 80000.00 |      20 |          8 |
|    106 | Vijay    | 55000.00 |      30 |          4 |
|    107 | Ajay     | 60000.00 |      40 |          5 |
|    108 | Ravi     | 40000.00 |      30 |          1 |
|    109 | Meena    | 75000.00 |      40 |          7 |
|    110 | Arun     | 35000.00 |      30 |          1 |
|    111 | sam      | 90000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+

mysql> begin;   (or start transaction)
Query OK, 0 rows affected (0.01 sec)

mysql> update employee set salary=salary-2000 where
    -> emp_name='Rahul';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 48000.00 |      10 |          3 |
|    102 | Kiran    | 45000.00 |      10 |          2 |
|    103 | Anita    | 65000.00 |      20 |          5 |
|    104 | Priya    | 70000.00 |      20 |          6 |
|    105 | Sneha    | 80000.00 |      20 |          8 |
|    106 | Vijay    | 55000.00 |      30 |          4 |
|    107 | Ajay     | 60000.00 |      40 |          5 |
|    108 | Ravi     | 40000.00 |      30 |          1 |
|    109 | Meena    | 75000.00 |      40 |          7 |
|    110 | Arun     | 35000.00 |      30 |          1 |
|    111 | sam      | 90000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+
11 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.02 sec)

 select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 50000.00 |      10 |          3 |
|    102 | Kiran    | 45000.00 |      10 |          2 |
|    103 | Anita    | 65000.00 |      20 |          5 |
|    104 | Priya    | 70000.00 |      20 |          6 |
|    105 | Sneha    | 80000.00 |      20 |          8 |
|    106 | Vijay    | 55000.00 |      30 |          4 |
|    107 | Ajay     | 60000.00 |      40 |          5 |
|    108 | Ravi     | 40000.00 |      30 |          1 |
|    109 | Meena    | 75000.00 |      40 |          7 |
|    110 | Arun     | 35000.00 |      30 |          1 |
|    111 | sam      | 90000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> update employee set salary=salary-20000
    -> where emp_name = 'Rahul';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set salary=salary+20000
    -> where emp_name = 'Kiran';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 30000.00 |      10 |          3 |
|    102 | Kiran    | 65000.00 |      10 |          2 |
|    103 | Anita    | 65000.00 |      20 |          5 |
|    104 | Priya    | 70000.00 |      20 |          6 |
|    105 | Sneha    | 80000.00 |      20 |          8 |
|    106 | Vijay    | 55000.00 |      30 |          4 |
|    107 | Ajay     | 60000.00 |      40 |          5 |
|    108 | Ravi     | 40000.00 |      30 |          1 |
|    109 | Meena    | 75000.00 |      40 |          7 |
|    110 | Arun     | 35000.00 |      30 |          1 |
|    111 | sam      | 90000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+

mysql> commit;
once we use commit we cant roll back

mysql> start transaction;

mysql> update employee set salary=salary-20000
    -> where emp_name = 'Kiran';
ERROR 1054 (42S22): Unknown column 'empname' in 'where clause'
mysql> rollback to sp1;
Query OK, 0 rows affected (0.00 sec)

mysql> update employee set salary= salary+20000
    -> where emp_name = 'Rahul';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 50000.00 |      10 |          3 |
|    102 | Kiran    | 45000.00 |      10 |          2 |
|    103 | Anita    | 65000.00 |      20 |          5 |
|    104 | Priya    | 70000.00 |      20 |          6 |
|    105 | Sneha    | 80000.00 |      20 |          8 |
|    106 | Vijay    | 55000.00 |      30 |          4 |
|    107 | Ajay     | 60000.00 |      40 |          5 |
|    108 | Ravi     | 40000.00 |      30 |          1 |
|    109 | Meena    | 75000.00 |      40 |          7 |
|    110 | Arun     | 35000.00 |      30 |          1 |
|    111 | sam      | 90000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+
mysql> rollback to sp1;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 30000.00 |      10 |          3 |
|    102 | Kiran    | 45000.00 |      10 |          2 |
|    103 | Anita    | 65000.00 |      20 |          5 |
|    104 | Priya    | 70000.00 |      20 |          6 |
|    105 | Sneha    | 80000.00 |      20 |          8 |
|    106 | Vijay    | 55000.00 |      30 |          4 |
|    107 | Ajay     | 60000.00 |      40 |          5 |
|    108 | Ravi     | 40000.00 |      30 |          1 |
|    109 | Meena    | 75000.00 |      40 |          7 |
|    110 | Arun     | 35000.00 |      30 |          1 |
|    111 | sam      | 90000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+

mysql> rollback;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 30000.00 |      10 |          3 |
|    102 | Kiran    | 65000.00 |      10 |          2 |
|    103 | Anita    | 65000.00 |      20 |          5 |
|    104 | Priya    | 70000.00 |      20 |          6 |
|    105 | Sneha    | 80000.00 |      20 |          8 |
|    106 | Vijay    | 55000.00 |      30 |          4 |
|    107 | Ajay     | 60000.00 |      40 |          5 |
|    108 | Ravi     | 40000.00 |      30 |          1 |
|    109 | Meena    | 75000.00 |      40 |          7 |
|    110 | Arun     | 35000.00 |      30 |          1 |
|    111 | sam      | 90000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+

commit;

ACID properties:

where transaction follow the acid properties
A = atomicity : either all or non itt use roll back
C = consistency : correctness. transaction before and after the sum of account is equal.
I = isolation : it used to convert to parallel operation into serial operation.
D = durability : it saves permanently  

log : it is nothing but a record
the transactions should follow the different logs
1.undo log : it stores the old value
purpose of rollback to change
2.redo log : it is used to read operations.
3.binary log : it store the history of transaction

select @@autocommit;
+--------------+
| @@autocommit |
+--------------+
|            1 |
+--------------+    
(if it has 0 in place of 1 then enable with below query.
how to enable : set @@autocommit=1;

assignment:

mysql> begin;
Query OK, 0 rows affected (0.00 sec)

mysql> update employee set salary= salary+5000
    -> where emp_id=101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> commit;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 35000.00 |      10 |          3 |
|    102 | Kiran    | 65000.00 |      10 |          2 |
|    103 | Anita    | 65000.00 |      20 |          5 |
|    104 | Priya    | 70000.00 |      20 |          6 |
|    105 | Sneha    | 80000.00 |      20 |          8 |
|    106 | Vijay    | 55000.00 |      30 |          4 |
|    107 | Ajay     | 60000.00 |      40 |          5 |
|    108 | Ravi     | 40000.00 |      30 |          1 |
|    109 | Meena    | 75000.00 |      40 |          7 |
|    110 | Arun     | 35000.00 |      30 |          1 |
|    111 | sam      | 90000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+

mysql> update employee set salary= salary*1.10;
Query OK, 11 rows affected (0.02 sec)
Rows matched: 11  Changed: 11  Warnings: 0

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 38500.00 |      10 |          3 |
|    102 | Kiran    | 71500.00 |      10 |          2 |
|    103 | Anita    | 71500.00 |      20 |          5 |
|    104 | Priya    | 77000.00 |      20 |          6 |
|    105 | Sneha    | 88000.00 |      20 |          8 |
|    106 | Vijay    | 60500.00 |      30 |          4 |
|    107 | Ajay     | 66000.00 |      40 |          5 |
|    108 | Ravi     | 44000.00 |      30 |          1 |
|    109 | Meena    | 82500.00 |      40 |          7 |
|    110 | Arun     | 38500.00 |      30 |          1 |
|    111 | sam      | 99000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+
11 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 38500.00 |      10 |          3 |
|    102 | Kiran    | 71500.00 |      10 |          2 |
|    103 | Anita    | 71500.00 |      20 |          5 |
|    104 | Priya    | 77000.00 |      20 |          6 |
|    105 | Sneha    | 88000.00 |      20 |          8 |
|    106 | Vijay    | 60500.00 |      30 |          4 |
|    107 | Ajay     | 66000.00 |      40 |          5 |
|    108 | Ravi     | 44000.00 |      30 |          1 |
|    109 | Meena    | 82500.00 |      40 |          7 |
|    110 | Arun     | 38500.00 |      30 |          1 |
|    111 | sam      | 99000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+

update employee set salary= salary-5000
    -> where emp_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> update employee set salary= salary+5000
    -> where emp_id=102;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 38500.00 |      10 |          3 |
|    102 | Kiran    | 76500.00 |      10 |          2 |
|    103 | Anita    | 71500.00 |      20 |          5 |
|    104 | Priya    | 77000.00 |      20 |          6 |
|    105 | Sneha    | 88000.00 |      20 |          8 |
|    106 | Vijay    | 60500.00 |      30 |          4 |
|    107 | Ajay     | 66000.00 |      40 |          5 |
|    108 | Ravi     | 44000.00 |      30 |          1 |
|    109 | Meena    | 82500.00 |      40 |          7 |
|    110 | Arun     | 38500.00 |      30 |          1 |
|    111 | sam      | 99000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+

mysql> update employee set salary= salary+5000
    -> where emp_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> savepoint sp2;
Query OK, 0 rows affected (0.00 sec)

update employee set salary= salary+5000
    -> where emp_id=102;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from employee;
+--------+----------+----------+---------+------------+
| emp_id | emp_name | salary   | dept_id | experience |
+--------+----------+----------+---------+------------+
|    101 | Rahul    | 43500.00 |      10 |          3 |
|    102 | Kiran    | 81500.00 |      10 |          2 |
|    103 | Anita    | 71500.00 |      20 |          5 |
|    104 | Priya    | 77000.00 |      20 |          6 |
|    105 | Sneha    | 88000.00 |      20 |          8 |
|    106 | Vijay    | 60500.00 |      30 |          4 |
|    107 | Ajay     | 66000.00 |      40 |          5 |
|    108 | Ravi     | 44000.00 |      30 |          1 |
|    109 | Meena    | 82500.00 |      40 |          7 |
|    110 | Arun     | 38500.00 |      30 |          1 |
|    111 | sam      | 99000.00 |    NULL |       NULL |
+--------+----------+----------+---------+------------+