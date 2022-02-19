SELECT * 
FROM film
WHERE rental_rate = 
(
	SELECT MIN(rental_rate) FROM film
) 
	AND replacement_cost =
(
	SELECT MAX(replacement_cost) FROM film
);