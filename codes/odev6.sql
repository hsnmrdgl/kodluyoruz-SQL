/* SORU 1 */
SELECT ROUND(AVG(rental_rate), 2) FROM film;


/* SORU 2 */
SELECT COUNT(*) FROM film
    WHERE title
    LIKE 'C%';


/* SORU 3 */
SELECT length FROM film
    WHERE rental_rate = 0.99
    ORDER BY length DESC
    LIMIT 1;


/* SORU 4 */
SELECT DISTINCT(replacement_cost) FROM film
    WHERE length > 150
    ORDER BY replacement_cost ASC;