-- create a table in our database
/*DDL
Data
Definition
Language */

create table customers(
id int,
name varchar(20),
score decimal(5,2),
country varchar(15)
);

/*Alter
to add column
to rename a column
to drop coloumn
modify the data type of a particular column*/

--add a new column to our table
alter table customers
add email varchar(50);

--to change/modify the data type of a particular column in a table
alter table customers
modify name text;

--to rename a column 
alter table customers
rename column score to points;

--to drop a column in a table
alter table customers
drop column email;


--Data Manipulation Language

-- now to populate our table
insert into customers (id, name, points, country)
values(2, 'Vivian', 500.25, 'Ghana');

insert into customers(id,name)
values(3, 'Nafisat')

insert into customers
values (4, 'Micheal', 100.45, 'Nigeria'),
       (5, 'stephen', 150.34,'Germany'),
       (6, 'Francis', 458.23, 'Algeria');

--Update
--to update our table
update customers
set points = 100.24,
country = 'Ghana'
where id = 3;

--Delete
/* Delete is to remove values from the table */
delete from customers
where id = 3

/* DATA QUERY LANGUAGE

SELECT
to retrieve the entire data in a table 
*/

select *
from customers;

--WHERE
--the WHERE is used to filter our data with the specified
--condition

--to retrieve customers from nigeria

select id 
from customers
where country = 'Nigeria'

-- retrieve customers that have points >1000
select * from customers
where points >1000


/*ORDER BY
The ORDER BY clause in SQL is used to sort
the result set of a query by one or more columns, either in ascending or descending order*/

select id, name, country
from customers
order by name asc;

select id, name, country
from customers order by points desc;

/*GROUP BY Group r*/
select name,
count(country)
from customers
group by name;

select country,
sum(points)
from customers
group by country;

select country,
avg(points)
from customers
group by country;

select country,
max(points)
from customers
group by country;

/* HAVING
Having filter data
after the group by*/

select country,
sum(points)
from customers
group by country
having sum(points) > 1000;

select country,
sum(points)
from customers
where country = 'Nigeria'
group by country
having sum(points) > 1200;

