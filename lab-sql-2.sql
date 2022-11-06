select * from actor
where first_name = 'Scarlett';   

select * from actor
where last_name = 'Johansson';

select count(film_id) as Num_Movies_Avail from film;

select count(rental_id) as Num_Rented_Films from rental;

select min(rental_duration) from film;

select max(rental_duration) from film;

select min(length) as min_duration from film;

select max(length) as max_duration from film;

select avg(length) from film;

/*The solution of below can be improved/optimized because I am including seconds (not required) and it appears the num. 3200 after the seconds that I don´t know what it is*/

select sec_to_time(avg(length * 60)) as New_Avg_Length from film;

select count(length) from film
where length > 180;

select concat(upper(left(first_name, 1)), lower(substring(first_name, 2))), last_name, lower(email) from customer;

select max(length(title)) from film;