-- Select all the actors with the first name ‘Scarlett’.
select * from actor
where first_name = 'Scarlett';   

-- Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = 'Johansson';

-- How many films (movies) are available for rent?
select count(film_id) as Num_Movies_Avail from film;

-- How many films have been rented?
select count(rental_id) as Num_Rented_Films from rental;

-- What is the shortest and longest rental period?
select min(rental_duration) from film;

select max(rental_duration) from film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration from film;

select max(length) as max_duration from film;

-- What's the average movie duration?
select avg(length) from film;

-- What's the average movie duration expressed in format (hours, minutes)?
select left(sec_to_time(avg(length * 60)), 5) as New_Avg_Length from film;

-- How many movies are longer than 3 hours?
select count(length) from film
where length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(upper(left(first_name, 1)), lower(substring(first_name, 2))), last_name, lower(email) from customer;

-- What's the length of the longest film title?
select max(length(title)) from film;