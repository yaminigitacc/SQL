-- let's learn joins in mysql
-- Joins allows you to combine 2 tables (or more) if they have common column
-- doesn't mean they need have same column name,but the data in it are same can be used to join the tables
-- there are several joins we will look at today,inner joins ,outer joins , self joins 

select * from employee_demographics;

select * from employee_salary;


-- lets' start with inner joins -- inner joins returns rows that are same in both columns

select * from employee_demographics join employee_salary on employee_demographics.employee_id=employee_salary.employee_id;

-- use aliasing 
select * from employee_demographics dem inner join employee_salary empsal on dem.employee_id=empsal.employee_id;

-- outer joins 
-- for outer joins we have left and right join
-- left outer join will take everything from left table ,only macthing records from right table
-- the exact opposite is true for right join

select * from employee_salary sal left join employee_demographics dem on dem.employee_id=sal.employee_id;


select * from employee_salary sal right join employee_demographics dem on dem.employee_id=sal.employee_id;


-- self join 

-- join a table to table itself

select * from employee_salary;

select * from employee_salary emp1 join employee_salary emp2 on emp1.employee_id=emp2.employee_id;

select * from employee_salary emp1 join employee_salary emp2 on emp1.employee_id + 1=emp2.employee_id;

select emp1.employee_id as emp_santa, emp1.first_name as santa_first_name, emp1.last_name,emp2.employee_id,emp2.employee_id,emp2.first_name,emp2.last_name
from employee_salary emp1
join employee_salary emp2 on  emp1.employee_id + 1  = emp2.employee_id


