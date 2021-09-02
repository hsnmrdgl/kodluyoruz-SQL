/* SORU 1 */
SELECT country  FROM country 
    WHERE country
    LIKE 'A%a';


/* SORU 2 */
SELECT country  FROM country 
    WHERE country
    LIKE '_____%n';


/* SORU 3 */
SELECT title  FROM film  
    WHERE title
    ILIKE '%t%t%t%t%';


/* SORU 4 */
SELECT *  FROM film  
    WHERE title
    LIKE 'C%' AND length > 90
    AND rental_rate IN (2.99);