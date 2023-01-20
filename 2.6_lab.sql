use sakila;

SELECT last_name FROM sakila.actor 
GROUP BY last_name having COUNT(*) = 1;

SELECT last_name FROM sakila.actor 
GROUP BY last_name having COUNT(*) > 1;


SELECT staff_id, COUNT(*) as 'Rentals Processed'
FROM rental
GROUP BY staff_id;

SELECT release_year, count(*) as number_of_films
from film
Group by release_year;

SELECT rental_rate, count(*) as number_of_rating
from film
Group by rental_rate;

SELECT rental_rate, round(AVG(length),2) as 'Mean Film Length'
FROM film
GROUP BY rental_rate;

SELECT rental_rate, ROUND(AVG(length), 2) as 'Mean Film Length'
FROM film
GROUP BY rental_rate
Having AVG(length) > 120;

SELECT title, length, rank() over(PARTITION BY rental_rate order by length) as ranks
from film
where length is not null and length not in (0)
order by length DESC;








