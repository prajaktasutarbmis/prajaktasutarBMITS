-- Database: "Movie_Data"


-- DROP DATABASE "Movie_Data";


CREATE DATABASE "Movie_Data"

  WITH OWNER = postgres

       ENCODING = 'UTF8'

       TABLESPACE = pg_default

       LC_COLLATE = 'English_United States.1252'

       LC_CTYPE = 'English_United States.1252'

       CONNECTION LIMIT = -1;



-- create the directors table

CREATE TABLE directors (director_id SERIAL PRIMARY KEY,first_name VARCHAR(20),last_name VARCHAR(20) NOT NULL,date_of_birth DATE,nationality VARCHAR(10));

SELECT * FROM directors;



--create table actors
 table 
create table actors(actor_id serial primary key,first_name varchar(20),last_name varchar(20),gender char(1),date_of_birth date);

select * from actors;



--create movies table

create table movies(movies_id serial primary key,movie_name varchar(15) not null,movie_length int,movie_language varchar(10),release_date date,age_certificate varchar(5),director_id int references directors(director_id));

select * from movies;



--create movie_revenues table

create table movie_revenues(revenue_id serial primary key,movies_id int references movies(movies_id),domestic_takings numeric(6,2),international_takings numeric(6,2));

select * from movie_revenues;



--create movies_actors table

create table movies_actors(movies_id int references movies(movies_id),actor_id int references actors(actor_id),primary key(movies_id,actor_id));

select * from movies_actors;



-- Database: mydatabase



CREATE DATABASE mydatabase

  WITH OWNER = postgres

       ENCODING = 'UTF8'

       TABLESPACE = pg_default

       LC_COLLATE = 'English_United States.1252'

       LC_CTYPE = 'English_United States.1252'

       CONNECTION LIMIT = -1;



--create employee table

create table employee(employee_id serial primary key,first_name varchar(20),last_name varchar(20));

select * from employee;



--add new column in employee table

alter table employee add column email varchar(20);



--add two new columns

alter table employee add column nationality varchar(20),add column age int not null;



--change data type of column

alter table employee alter column nationality type char(3);



--insert data into table

insert into employee values(101,'sooraj','shaha','sooraj@gmail.com','ind',22);

insert into employee values(102,'siya','patil','siya@gmail.com','ind',21);

insert into employee values(103,'emily','watson','watson@gmail.com','aus',25);

insert into employee values(104,'david','warner','david@gmail.com','sa',67);

insert into employee values(105,'harry','curron','harry@gmail.com','usa',54);



--update age of employee whose employee id is 101

update employee set age=46 where employee_id=101;


--update employee name and email whose id is 102

update employee set first_name='piya',email='piya@gmail.com' where employee_id=102;




--delete employee whose employee id=101

delete from employee where employee_id=101;

select * from employee;




--fetching data from actor table

select movie_name,release_date from movies;



--select first and last name of all indian directors

select first_name,last_name from directors where nationality='Indian';



--select all male actors born after the 1st of january1970

select first_name from actors where date_of_birth > '1970-1-1';



--select the names of all movies wgich are over 60 minutes long and language is Hindi

select movie_name from movies where movie_length > 1 and movie_language='Hindi';



--get first name and last name from actors where actors first name is shahrukh and deepika

select first_name,last_name from actors where first_name in('Shahrukh','Deepika');



--get first name and last name from actors where actors first name can't be shahrukh and deepika

select first_name,last_name from actors where first_name not in('Shahrukh','Deepika');



--get list of actors whose first name starts with 'A'

select first_name from actors where first_name like 'A%';



--get list of actors whose first name starts with 'A' followed by 3 characters

select first_name from actors where first_name like 'A___';



--get list of actors whose first name ends with 'a'

select first_name from actors where first_name like '%a';



--get list of actors whose first name contains 'n'

select first_name from actors where first_name like '%n%';



--get list of movies having release data in between 1-5-2015 and 1-5-2020

select movie_name from movies where release_date between '2015-5-1' and '2020-5-1';



--list of first names of actors alphabetically
 
select first_name from actors order by first_name;



--list of first names of actors alphabetically by descending order

select first_name from actors order by first_name desc;



--order by date of birth column in actors table

select first_name,last_name,date_of_birth from actors order by date_of_birth;



--find out lowest three domestics taking in movie_revenues

select revenue_id, domestic_takings from movie_revenues order by domestic_takings limit 3;



--apply offset

select revenue_id, domestic_takings from movie_revenues order by revenue_id limit 3 offset 2;


 
--select movie_name of movies table and fetch 1st row

select movies_id,movie_name from movies fetch first 1 row only;



--fetch only 3 rows

select movies_id,movie_name from movies fetch first 3 row only;

 

--apply offset

 select movies_id,movie_name from movies offset 3 row fetch first 3 row only;


 //get distincts movie languages in movies table

 select distinct movie_language from movies;



--select the actors whose date of birth is null 

 select first_name from actors where date_of_birth is null;



 --select the actors whose date of birth is not null
 
 select first_name from actors where date_of_birth is not null;


--rename the last_name column to surname in actors

 select last_name as surname from actors;



--create alias of column and list the actors whose last name starts with k order wise

select last_name as surname from actors where last_name like 'K%' order by surname;

 

--concat two string

select 'good' || ' morning' as newstring;



--concat two columns

select concat(first_name,' ',last_name) as name from actors;




  



--count total number of actors
select count(actor_id) from actors;
--count() can not count the null values
select count(date_of_birth) from actors;

--sum the domestics takings of movie_revenues table
select sum(domestic_takings) from movie_revenues;

--get maximum value from domestics takings
select max(domestic_takings) from movie_revenues;

--get manimum value from domestics takings
select min(domestic_takings) from movie_revenues;

--get average value of domestic takings
select avg(domestic_takings) from movie_revenues;
--craate group of movies by movie language
select movie_language from movies group by movie_language;

--craate group of movies and count them by movie language
select movie_language,count(movie_language) from movies group by movie_language;

--craate group of movies by movie language and age certificate
select movie_language,age_certificate from movies group by movie_language,age_certificate;

--craate group of movies by movie language where movie length greater 2
select movie_language from movies where movie_length> 2 group by movie_language;

--apply having clause
select movie_language,count(movie_length) from movies group by movie_language having count(movie_language)>1;

--addition opertaion
select 10+2 as addition;

--subtraction operation
select 10-2 as subtraction;

--multiplication operation
select 10*2 as multiplication;

--division operation
select 10/2 as division;

--mod operation
select 10%2 as mod;

--inner join between two tables(table1=directors,table2=movies)
select directors.director_id,directors.first_name,directors.last_name,movies.movie_name from directors inner join movies on directors.director_id=movies.director_id;

--inner join by creating alias of tables.
select d.director_id,d.first_name,d.last_name,m.movie_name from directors d join movies m on d.director_id=m.director_id;

--inner join with 'using' keyword 
select d.director_id,d.first_name,d.last_name,m.movie_name from directors d join movies m using (director_id);

--left join between two table
select directors.director_id,directors.first_name,directors.last_name,movies.movie_name from directors left join movies on directors.director_id=movies.director_id;

--left join by creating alias of tables.
select d.director_id,d.first_name,d.last_name,m.movie_name from directors d left join movies m on d.director_id=m.director_id;

--left join with 'using' keyword 
select d.director_id,d.first_name,d.last_name,m.movie_name from directors d left join movies m using (director_id);

--right join between two table
select directors.director_id,directors.first_name,directors.last_name,movies.movie_name from directors right join movies on directors.director_id=movies.director_id;

--right join by creating alias of tables.
select d.director_id,d.first_name,d.last_name,m.movie_name from directors d right join movies m on d.director_id=m.director_id;

--right join with 'using' keyword 
select d.director_id,d.first_name,d.last_name,m.movie_name from directors d right join movies m using (director_id);

--full join between two table
select directors.director_id,directors.first_name,directors.last_name,movies.movie_name from directors full join movies on directors.director_id=movies.director_id;

--full join by creating alias of tables.
select d.director_id,d.first_name,d.last_name,m.movie_name from directors d full join movies m on d.director_id=m.director_id;

--full join with 'using' keyword 
select d.director_id,d.first_name,d.last_name,m.movie_name from directors d full join movies m using (director_id)

--join three tables
select d.first_name,d.last_name,m.movie_name,mr.revenue_id from directors d join movies m on d.director_id=m.director_id join movie_revenues mr on m.movies_id=mr.movies_id;

--select the first name and last names of all the actors who have started in movies directed by rohit shetty
select a.first_name,a.last_name from actors a join movies_actors ma on a.actor_id=ma.actor_id join movies m on m.movies_id=ma.movies_id join directors d on d.director_id=m.director_id where d.first_name='Rohit' and d.last_name='Shetty';

--which director has the highest total domestic takings
select d.first_name,d.last_name,sum(mr.domestic_takings) as total_takings from directors d join movies m on d.director_id=m.director_id join movie_revenues mr on mr.movies_id=m.movies_id group by d.first_name,d.last_name order by total_takings desc limit 1;


