/* SORU 1 */
SELECT length FROM film
	WHERE length >(SELECT AVG(length) FROM film);


/* SORU 2 */
SELECT COUNT(rental_rate) FROM film
	WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);


/* SORU 3 */
SELECT title, rental_rate,
	(SELECT MIN(replacement_cost) FROM film) FROM film
	WHERE  rental_rate = ANY (SELECT MIN(rental_rate) FROM 		film);


/* SORU 4 */
SELECT customer.customer_id, first_name, last_name,
	COUNT(*) AS number_of_purchases FROM customer
	LEFT JOIN payment ON customer.customer_id = 	payment.customer_id
	GROUP BY customer.customer_id, first_name, last_name
	ORDER BY number_of_purchases DESC;