select * from employee_demographics;
select first_name,last_name from employee_demographics union select occupation,salary from employee_salary; 

select first_name,last_name from employee_demographics union distinct select first_name,last_name from employee_salary;



SELECT first_name, last_name FROM employee_demographics UNION ALL SELECT first_name, last_name FROM employee_salary;

select first_name,last_name 'Old' from employee_demographics where age>50;

select first_name,last_name ,'Old lady' as Label from employee_demographics where age>40 and gender='Female' union select first_name,last_name,
'Old Men' from employee_demographics where age>40 and gender='male' union select first_name,last_name,'High Paid Salary' from employee_salary
where salary>=70000  order by first_name;