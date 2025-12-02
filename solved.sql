USE sakila;
-- 1. Display all available tables in the Sakila database.
SHOW FULL TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3. Retrieve the following columns from their respective tables
SELECT title FROM sakila.film;
SELECT name AS language FROM sakila.language;
SELECT first_name FROM sakila.staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM sakila.film;

-- 5.Counting records for database insights
SELECT COUNT(*) AS store_count FROM sakila.store;
SELECT COUNT(*) AS employee_count FROM sakila.staff;

SELECT COUNT(*) AS available_films
FROM sakila.inventory
WHERE inventory_id NOT IN (SELECT inventory_id FROM sakila.rental);

SELECT COUNT(*) AS rented_films FROM sakila.rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM sakila.actor;

-- 6.Retrieve the 10 longest films.
SELECT title, length FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- 7.1. Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor WHERE first_name = 'SCARLETT';

-- 7.2. Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
  
-- 7.3. Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS behind_scenes_films FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';

