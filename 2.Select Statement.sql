# select table from database
select * from parks_and_recreation.employee_demographics;
use parks_and_recreation;
select first_name from parks_and_recreation.employee_demographics;

select first_name,last_name from parks_and_recreation.employee_demographics;

select first_name,last_name,gender,age from parks_and_recreation.employee_demographics;

select last_name,first_name,gender,age from employee_demographics;

select * from employee_salary;

select * from parks_departments;

# increase the employee salary by 100
select first_name,
last_name,
salary,
salary+100 
from employee_salary;


# lets do multiply the employee salary after increment with 10

select first_name,last_name,salary,(salary+100)*10  from employee_salary;

select dept_id from employee_salary;

select distinct dept_id from employee_salary;




