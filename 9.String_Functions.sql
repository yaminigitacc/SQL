select length('sky');

select first_name from employee_demographics;

select first_name , length(first_name) from employee_demographics;

-- change string characters to Upper
select upper('sky');

select first_name, upper(first_name) from employee_demographics;

select lower('sky');

select first_name , lower(first_name) from employee_demographics;

select trim('sky'   );

select ltrim('I    Love   SQL');

select ltrim(      'I Love SQL');

SELECT LTRIM('     I love SQL');

select rtrim('I love SQL   ');

select left('Alexander' ,4);

select first_name ,LEFT(first_name,4) from employee_demographics;

SELECT RIGHT('Alexander', 6);



