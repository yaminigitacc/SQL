-- Let's understand GroupBy and OrderBy

-- When we use groupBy clause in MySQL query, it actually groups the rows together that have same values in specified coulmn or columns
-- Group BY clause is allows us to group rows that have the same data and run aggregate functions on them


select * from employee_demographics;

-- when we use group by  you have to have the same columns you're grouping on in the group by statement

select gender from employee_demographics group by gender;

select first_name from employee_demographics group by gender;

-- we can see Office Manager Only one row 
select occupation  from employee_salary group by occupation;
-- when we check group by salary we could see 2 Office Managers as per salary groupby because salary is different.
select occupation,salary  from employee_salary group by occupation,salary;

-- the most useful reason we use group by is so we can perform out aggregate functions on them

select gender,avg(age) from employee_demographics group by gender;

select gender , min(age) ,max(age),avg(age),count(age) from employee_demographics group by gender;


# Order By Clause:
------------------
# order By clause is used for sort the result-set in ascending or descending order.

# The Order By Clause by default it sorts in Ascending order .If we want to sort in descending order use DESC keyword.

# lets try it in simple way 
select * from employee_demographics order by first_name; # alphabatical order (a-z) ascending order

-- if we want them in descending order (z-a) descending order

select * from employee_demographics order by first_name desc;

-- lets order BY multiple coulmns

select * from employee_demographics order by gender,age;

select * from employee_demographics order by gender desc,age desc;

#now we don't actually have to spell out the column names. We can actually just use their column position

#State is in position 8 and money is in 9, we can use those as well.

select * from employee_demographics order by 5 desc , 4 desc;

#Now best practice is to use the column names as it's more overt and if columns are added or replaced or something in this table it will still use the right columns to order on.

#So that's all there is to order by - fairly straight forward, but something I use for most queries I use in SQL
