use parks_and_recreation;

# select the employee whose salary is greater than 50000

select * from employee_salary where salary>50000;

select * from employee_salary where salary>=50000;

# lets check how many females  employees are working

select * from employee_demographics where gender='female';

select * from employee_demographics where gender='male';

select * from employee_demographics where gender!='female';

select * from employee_demographics;

select * from employee_demographics where birth_date > '1985-01-01';

select * from employee_demographics where first_name like 'a%';

select * from employee_demographics where first_name like 'a__';


select * from employee_demographics where first_name like 'a___%';




