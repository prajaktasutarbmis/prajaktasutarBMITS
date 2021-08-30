-- Database: owners_pets


-- DROP DATABASE owners_pets;


CREATE DATABASE owners_pets

  WITH OWNER = postgres

       ENCODING = 'UTF8'

       TABLESPACE = pg_default

       LC_COLLATE = 'English_United States.1252'

       LC_CTYPE = 'English_United States.1252'
<<<<<<< HEAD

       CONNECTION LIMIT = -1;



 --create owner table

 create table owners(id serial primary key,first_name varchar(20),last_name varchar(20),city varchar(20),state character(2));

select * from owners;



--create pets table

create table pets(pets_id serial primary key,species varchar(20),full_name varchar(10),age int,id int references owners(id));

select * from pets;



--add an email column in owners table

alter table owners add column email varchar(10) unique;



--change the data type of the last_name column in the owners table to varchar(50)

alter table owners alter column last_name type varchar(50);



--insert the data into owners table

insert into owners values(1,'samules','smith','boston','ma','smith@gmail.com');

insert into owners values(2,'emma','johnson','seattle','wa','emma@gmail.com');

insert into owners values(3,'saroj','ahuja','rajkot','gj','saroj@gmail.com');

insert into owners values(4,'sunny','singh','amritsar','pj','sunny@gmail.com');

insert into owners values(5,'meera','deshmukh','pune','mh','meera@gmail.com');

insert into owners values(6,'nill','raj','banglore','kr','nill@gmail.com');

insert into owners values(7,'ajay','devara','jodhpur','rj','ajay@gmail.com');



--insert the data into pets table

insert into pets values(1,'dog','rex',6,1);

insert into pets values(2,'rabbit','fluffy',2,5);

insert into pets values(3,'cat','tom',2,5);

insert into pets values(4,'mouse','jerry',2,2);

insert into pets values(5,'dog','biggles',4,1);

insert into pets values(6,'tortoise','squirtle',42,3);



--update fluffy the rabbits age to 3

update pets set age=3 where full_name='fluffy';



--delete Mr raj from the owners table

delete from owners where last_name='raj';




--fetching records from movie database
--
select movie-name and release-date of every movie

select movie_name,release_date from movies;



--select first and last name of all indian directors

select first_name,last_name from directors where nationality='Indian';



--select all male actors born after the 1st of january1970

select first_name from actors where date_of_birth > '1970-1-1';



--select the names of all movies which are over 60 minutes long and language is Hindi

select movie_name from movies where movie_length > 1 and movie_language='Hindi';



--select the movie names and movie language of all movies with a movie language of English,Hindi

select movie_name,movie_language from movies where movie_language in('English','Hindi');




--select first name and last name of the actors whose last name begins with K and were born between 1/1/1960 and 31/12/1979

select first_name,last_name from actors where last_name like 'K%' and date_of_birth between '1960-1-1' and '1979-12-31';



--select the first name and last name of director with nationality of american,Indian born between 1/1/1950 and 31/12/1980

select first_name,last_name from directors where nationality in ('american','Indian') and date_of_birth between '1950-1-1' and '1980-12-31';



 --select the indian directors ordered from oldest to youngest
 
select first_name,last_name,date_of_birth from directors where nationality='Indian' order by date_of_birth;



 --return the distinct nationalities from directors table;
 
select distinct nationality from directors;

 

--return the first names,last names and date of births of the 2 youngest female actors.
 
select first_name,last_name,date_of_birth from actors where gender='F' order by date_of_birth desc limit 2;



--return the top movies with the highest international takings

select movies_id from movie_revenues order by international_takings desc limit 1;



--concatenate the first and last name of the directors seperated by a space,and call this full new column full_name

select concat(first_name,' ',last_name) as full_name from directors;



--return the actors with missing first_name or missing date_of_births

select actor_id,first_name from actors where first_name is null or date_of_birth is null;










=======
       CONNECTION LIMIT = -1;
 --create owner table
 create table owners(id serial primary key,first_name varchar(20),last_name varchar(20),city varchar(20),state character(2));
select * from owners;

--create pets table
create table pets(pets_id serial primary key,species varchar(20),full_name varchar(10),age int,id int references owners(id));
select * from pets;

--add an email column in owners table
alter table owners add column email varchar(10) unique;

--change the data type of the last_name column in the owners table to varchar(50)
alter table owners alter column last_name type varchar(50);

--insert the data into owners table
insert into owners values(1,'samules','smith','boston','ma','smith@gmail.com');
insert into owners values(2,'emma','johnson','seattle','wa','emma@gmail.com');
insert into owners values(3,'saroj','ahuja','rajkot','gj','saroj@gmail.com');
insert into owners values(4,'sunny','singh','amritsar','pj','sunny@gmail.com');
insert into owners values(5,'meera','deshmukh','pune','mh','meera@gmail.com');
insert into owners values(6,'nill','raj','banglore','kr','nill@gmail.com');
insert into owners values(7,'ajay','devara','jodhpur','rj','ajay@gmail.com');

--insert the data into pets table
insert into pets values(1,'dog','rex',6,1);
insert into pets values(2,'rabbit','fluffy',2,5);
insert into pets values(3,'cat','tom',2,5);
insert into pets values(4,'mouse','jerry',2,2);
insert into pets values(5,'dog','biggles',4,1);
insert into pets values(6,'tortoise','squirtle',42,3);

--update fluffy the rabbits age to 3
update pets set age=3 where full_name='fluffy';

--delete Mr raj from the owners table
delete from owners where last_name='raj';

--select movie-name and release-date of every movie
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

--select the movie names and movie language of all movies with a movie language of English,Hindi
select movie_name,movie_language from movies where movie_language in('English','Hindi');

--select first name and last name of the actors whose last name begins with K and were born between 1/1/1960 and 31/12/1979
select first_name,last_name from actors where last_name like 'K%' and date_of_birth between '1960-1-1' and '1979-12-31';

--select the first name and last name of director with nationality of american,Indian born between 1/1/1950 and 31/12/1980
select first_name,last_name from directors where nationality in ('american','Indian') and date_of_birth between '1950-1-1' and '1980-12-31';

 --select the indian directors ordered from oldest to youngest
 select first_name,last_name,date_of_birth from directors where nationality='Indian' order by date_of_birth;

 --return the distinct nationalities from directors table;
 select distinct nationality from directors;

 --return the first names,last names and date of births of the 2 youngest female actors.
 select first_name,last_name,date_of_birth from actors where gender='F' order by date_of_birth desc limit 2;

--return the top movies with the highest international takings
select movies_id from movie_revenues order by international_takings desc limit 1;

--concatenate the first and last name of the directors seperated by a space,and call this full new column full_name
select concat(first_name,' ',last_name) as full_name from directors;

--return the actors with missing first_name or missing date_of_births
select actor_id,first_name from actors where first_name is null or date_of_birth is null;

--count the number of actors born after the 1st of january 1980
select count(actor_id) from actors where date_of_birth >'1980-1-1';

--what was the heighest and lowest domestic takings for movie;
select max(domestic_takings) from movie_revenues;
select min(domestic_takings) from movie_revenues;

--what is the sum total movie length for movies rated 15;
select sum(movie_length) from movies where age_certificate='18';

--how many Indian directors in the directors table
select count(director_id) from directors where nationality='Indian';

--what is the average movie length for hindi movies; 
select avg(movie_length) from movies where movie_language='Hindi';

--how many directors are there per nationality
select nationality,count(nationality) from directors group by nationality;

--what is the sum total movie length for each age certificate and movie language combination
select movie_language,age_certificate,sum(movie_length) from movies group by movie_language,age_certificate;

--return the movie language which have a sum total movie length of over 60 mins
select movie_language,sum(movie_length) from movies group by movie_language having sum(movie_length)>1;

--select the directors first name and last name,the movie names and release dates for all Hindi,Marathi and English movies
select d.first_name,d.last_name,m.movie_name,m.release_date from directors d join movies m on d.director_id=m.director_id where m.movie_language in('Hindi','English','Marathi');

--select  the movie names,release dates and international taking of all Hindi language movies
select m.movie_name,m.release_date,mr.international_takings from movies m join movie_revenues mr on m.movies_id=mr.movies_id where m.movie_language='Hindi';

--select the movies names,domestic takings and international takings for all movies with either missing domestic takings or missing international takings and order the results by movie name
select m.movie_name,mr.domestic_takings,mr.international_takings from movies m join movie_revenues mr on m.movies_id=mr.movies_id where mr.domestic_takings is null or mr.international_takings is null order by m.movie_name;

--use a left join to select the first and last names of all Indian directors and names and age certificates of the movies that they directed
select d.first_name,d.last_name,m.movie_name,m.age_certificate from directors d left join movies m on d.director_id=m.director_id where d.nationality='Indian';

--count the number of movies that each director has directed
select d.first_name,d.last_name,count(m.movies_id) from directors d left join movies m on d.director_id=m.director_id group by d.first_name,d.last_name; 
