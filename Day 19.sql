DAY- 19:
*************
(01/09/26)

stored procedures:
------------------------
the procedure is a group of sql statements.
it is used to store the group of sql statements inside the database.
the main purpose of stored procedure is used to code reusability.

procedure syntax:
------------------
delimiter //
create procedure procedure_name()
begin

write sql statements

end //
delimiter;

how to call the procedure :
---------------------------------
call procedure_name();

eg:
delimiter //
create procedure empDetails()
begin
select * from employee;
end //
delimiter;

to check the procedure status:
----------------------------------
show procedure status where db = 'databasename';

with parameter stored procedure:
------------------------------------
in  - procedure take the input
out  - return the output 
inout - take and return output

eg:

delimiter //
create procedure empIDDetails(in empId int)
begin
select * from employee where emp_id= empId;
end //

call empIDDetails(101);


out ------ the procedure return a value

delimiter //
create procedure empCount(out cemp int)
begin
select count(*) into cemp from employee;
end //
delimiter ;

call empcount(@cemp);

select @cemp;

inout:
-------
the procedure take input and return output

delimiter //
create procedure salaryUpdate(in Eid int,inout esal decimal(10,2))
begin
update employee set salary = salary+esal 
where emp_id = Eid;
end //
delimiter ;
