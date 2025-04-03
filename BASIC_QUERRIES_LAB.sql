USE SAKILA;
--- 1. Display all available tables in the Sakila database.
SHOW TABLES;

--- 2. Retrieve all the data from the tables actor, film and customer
SELECT * FROM ACTOR;
SELECT *FROM FILM;
SELECT*FROM CUSTOMER;

--- 3. Titles of all films from the film table
SELECT TITLE FROM FILM;

--- 4. List of languages used in films, with the column aliased as language from the language table
SELECT NAME AS LANGUAGE 
FROM LANGUAGE;
SELECT * FROM LANGUAGE; 

--- 5. List of first names of all employees from the staff table.
SELECT FIRST_NAME 
FROM STAFF;

--- 6. Retrieve unique release years
select distinct(release_year)
from film;

--- 7. Determine the number of stores that the company has
select count(distinct(store_id)) as stores 
from store;

--- 8. Determine the number of employees that the company has.
select count(distinct staff_id) as Number_of_employees
from staff;

--- 9. Determine how many films are available for rent and how many have been rented
select count(distinct film_id) as Available_for_rent 
from film;

select count(distinct rental_id) as Fils_rented 
from rental;

--- 10 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name)from actor;

--- 11.Retrieve the 10 longest films.
select title as Longest_films,length
from film
order by length desc
limit 10;

--- 12. Retrieve all actors with the first name "SCARLETT".
select *
from actor
where first_name='SCARLETT';

--- 13.Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT *FROM FILM
WHERE TITLE LIKE'%ARMAGEDDON' AND LENGTH>100;

--- 14. the number of films that include Behind the Scenes content

SELECT COUNT(*)FROM FILM
WHERE SPECIAL_FEATURES LIKE '%Behind the Scenes';


















