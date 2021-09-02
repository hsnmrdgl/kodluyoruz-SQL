# :man_technologist: Kodluyoruz / Patika - SQL

Kodluyoruz SQL Patikası

## :arrow_forward: Ödev 1

1.  **film** tablosunda bulunan **title** ve **description** sütunlarındaki verileri sıralayınız.
2.  **film** tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük **VE** 75 ten küçük olma koşullarıyla sıralayınız.
3.  **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 **VE** replacement_cost 12.99 **VEYA** 28.99 olma koşullarıyla sıralayınız.
4.  **customer** tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
5.  **film** tablosundaki uzunluğu(length) 50 ten büyük **OLMAYIP** aynı zamanda rental_rate değeri 2.99 veya 4.99 **OLMAYAN** verileri sıralayınız.


### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
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

```
</details>

------------
