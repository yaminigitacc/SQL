-- Lets Learn about Limit and Aliasing 
-- 'Limit' just specify how many rows you want in output.

select * from employee_demographics limit 4;

-- if we change something like order or by group the output also will changed

select * from employee_demographics order by first_name limit 7;

-- Now there is an additional parameter in limit which can access using a comma that specifies the starting place.
select * from employee_demographics order by first_name;

select count(*) from employee_demographics;

select * from employee_demographics order by first_name limit 3,2;
-- from this query 3 is starting position after that 2 rows got selected.

-- we could use it when we want to select third oldest person by doing this.

select * from employee_demographics order by age desc;

select * from employee_demographics order by age desc limit 2,1;

-- Aliasing 
-- aliasing is just a name change for column ,
-- it can be also used in joins ,but we look at the intermediate series

select gender, AVG(age) from employee_demographics group by gender;

-- actually we use AS keyword for aliasing

select gender, AVG(age) as AVG_AGE from employee_demographics group by gender;

-- although we don't actually need it

select gender, AVG(age) AVG_AGE from employee_demographics group by gender;