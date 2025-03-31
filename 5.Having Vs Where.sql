# The main difference between Where  and Having is 'Where' clause can't used with aggregate functions.
# Where is used for filter rows data of columns of data
# Having is used filter rows data of aggregated columns when grouped.

select gender,avg(age) from employee_demographics group by gender;

-- let's try to filter  on avg age using where condition.
select gender, AVG(age) from employee_demographics  where AVG(age)>40 group by gender;

-- this is why having was created
select gender,AVG(age) from employee_demographics group by gender having AVG(age)>40;

select gender,AVG(age) as AVG_AGE from employee_demographics group by gender having AVG_AGE>40;
