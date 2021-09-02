/* SORU 1 */
SELECT title, description FROM film;


/* SORU 2 */
SELECT * FROM film
    WHERE length > 60 AND length < 75;


/* SORU 3 */
SELECT * FROM film
    WHERE rental_rate = 0.99
    AND replacement_cost = 12.99
    OR replacement_cost = 28.99;


/* SORU 4 */
SELECT * FROM customer
    WHERE first_name = 'Mary'


/* SORU 5 */
SELECT * FROM film
    WHERE length < 50
    AND NOT rental_rate = 2.99
    OR NOT rental_rate = 4.99;