# :man_technologist: Kodluyoruz / Patika - SQL

Kodluyoruz SQL Patikası

- [Ödev 1](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-1 "Ödev 1")
- [Ödev 2](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-2 "Ödev 2")
- [Ödev 3](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-3 "Ödev 3")
- [Ödev 4](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-4 "Ödev 4")
- [Ödev 5](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-5 "Ödev 5")
- [Ödev 6](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-6 "Ödev 6")
- [Ödev 7](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-7 "Ödev 7")
- [Ödev 8](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-8 "Ödev 8")
- [Ödev 9](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-9 "Ödev 9")
- [Ödev 10](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-10 "Ödev 10")
- [Ödev 11](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-11 "Ödev 11")
- [Ödev 12](https://github.com/hsnmrdgl/kodluyoruz_SQL#arrow_forward-%C3%B6dev-12 "Ödev 12")

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


## :arrow_forward: Ödev 2

1.  **film** tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( **BETWEEN - AND** yapısını kullanınız.)
2.  **actor** tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( **IN** operatörünü kullanınız.)
3.  **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 **VE** replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( **IN** operatörünü kullanınız.)

### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
/* SORU 1 */
SELECT * FROM film
    WHERE replacement_cost
    BETWEEN 12.99 AND 16.99;


/* SORU 2 */
SELECT first_name, last_name FROM actor
    WHERE first_name IN ('Penelope', 'Nick', 'ED');


/* SORU 3 */
SELECT * FROM film
    WHERE rental_rate IN (0.99, 2.99, 4.99)
    AND replacement_cost IN (12.99, 15.99, 28.99);

```
</details>

------------


## :arrow_forward: Ödev 3

1.  **country** tablosunda bulunan **country** sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
2.  **country** tablosunda bulunan **country** sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
3.  **film** tablosunda bulunan **title** sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
4.  **film** tablosunda bulunan tüm sütunlardaki verilerden **title** 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
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

```
</details>

------------


## :arrow_forward: Ödev 4

1.  **film** tablosunda bulunan **replacement_cost** sütununda bulunan birbirinden farklı değerleri sıralayınız.
2.  **film** tablosunda bulunan **replacement_cost** sütununda birbirinden farklı kaç tane veri vardır?
3.  **film** tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
4.  **country** tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
5.  **city** tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?

### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
/* SORU 1 */
SELECT DISTINCT	replacement_cost FROM film;


/* SORU 2 */
SELECT COUNT(DISTINCT replacement_cost) FROM film;


/* SORU 3 */
SELECT COUNT(*) FROM film
    WHERE title
    LIKE 'T%' AND rating = 'G';


/* SORU 4 */
SELECT COUNT(*) FROM country
    WHERE country LIKE '_____';


/* SORU 5 */
SELECT COUNT(*) FROM city
    WHERE city ILIKE '%r';

```
</details>

------------


## :arrow_forward: Ödev 5

1.  **film** tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
2.  **film** tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci 5 filmi sıralayınız.
3.  **customer** tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
/* SORU 1 */
SELECT title, length FROM film
    WHERE title LIKE '%n'
    ORDER BY length DESC
    LIMIT 5;


/* SORU 2 */
SELECT title, length FROM film
    WHERE title LIKE '%n'
    ORDER BY length ASC
    OFFSET 5
    LIMIT 5;


/* SORU 3 */
SELECT last_name, store_id FROM customer
    WHERE store_id = 1
    ORDER BY last_name DESC
    LIMIT 4;

```
</details>

------------


## :arrow_forward: Ödev 6

1.  **film** tablosunda bulunan **rental_rate** sütunundaki değerlerin ortalaması nedir?
2.  **film** tablosunda bulunan filmlerden kaçtanesi 'C' karekteri ile başlar?
3.  **film** tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
4.  **film** tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
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

```
</details>

------------


## :arrow_forward: Ödev 7

1.  **film** tablosunda bulunan filmleri **rating** değerlerine göre gruplayınız.
2.  **film** tablosunda bulunan filmleri **replacement_cost** sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
3.  **customer** tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
4.  **city** tablosunda bulunan şehir verilerini **country_id** sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıra country_id bilgisini ve şehir sayısını paylaşınız.


### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
/* SORU 1 */
SELECT rating, COUNT(*) FROM film
    GROUP BY rating;


/* SORU 2 */
SELECT replacement_cost, COUNT(*) FROM film
    GROUP BY replacement_cost
    HAVING COUNT(*) > 50;


/* SORU 3 */
SELECT store_id, COUNT(*) FROM customer
    GROUP BY store_id;


/* SORU 4 */
SELECT country_id, COUNT(*) FROM city
    GROUP BY country_id
    ORDER BY COUNT(*) DESC
    LIMIT 1;

```
</details>

------------


## :arrow_forward: Ödev 8

1.  **test** veritabanınızda **employee** isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
2.  Oluşturduğumuz **employee** tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
3.  Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
4.  Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.


### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
/* SORU 1 */
CREATE TABLE employee (
	id INTEGER,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);


/* SORU 2 */
insert into employee (id, name, birthday, email) values (1, 'Rubetta Bewsey', '2019-03-27', 'rbewsey0@drupal.org');
insert into employee (id, name, birthday, email) values (2, 'Agnesse McNeill', '2006-12-29', 'amcneill1@toplist.cz');
insert into employee (id, name, birthday, email) values (3, 'Taylor Mew', '2006-10-18', 'tmew2@disqus.com');
insert into employee (id, name, birthday, email) values (4, 'Devina Walhedd', '1992-03-15', 'dwalhedd3@bluehost.com');
insert into employee (id, name, birthday, email) values (5, 'Kiel Goodrich', '2000-05-09', 'kgoodrich4@illinois.edu');
insert into employee (id, name, birthday, email) values (6, 'Karlis Capon', '1995-10-17', 'kcapon5@blogger.com');
insert into employee (id, name, birthday, email) values (7, 'Iver McGenis', '2012-08-29', 'imcgenis6@smugmug.com');
insert into employee (id, name, birthday, email) values (8, 'Ralf Bragg', '2002-07-20', 'rbragg7@reference.com');
insert into employee (id, name, birthday, email) values (9, 'Ninnetta Sparhawk', '2018-01-05', 'nsparhawk8@statcounter.com');
insert into employee (id, name, birthday, email) values (10, 'Mitchell McSherry', '2015-04-30', 'mmcsherry9@bloglovin.com');
insert into employee (id, name, birthday, email) values (11, 'Cathee Abys', '1991-12-19', 'cabysa@furl.net');
insert into employee (id, name, birthday, email) values (12, 'Monique Cantle', '2006-06-23', 'mcantleb@redcross.org');
insert into employee (id, name, birthday, email) values (13, 'Tyrus Haig', '2017-12-28', 'thaigc@nba.com');
insert into employee (id, name, birthday, email) values (14, 'Erma Bannerman', '1993-08-23', 'ebannermand@ning.com');
insert into employee (id, name, birthday, email) values (15, 'Saundra Almeida', '2003-04-23', 'salmeidae@bing.com');
insert into employee (id, name, birthday, email) values (16, 'Dallon Havick', '2003-06-18', 'dhavickf@earthlink.net');
insert into employee (id, name, birthday, email) values (17, 'Dulcie Polo', '2003-12-01', 'dpolog@ebay.com');
insert into employee (id, name, birthday, email) values (18, 'Loralyn Waber', '1992-01-19', 'lwaberh@ucoz.ru');
insert into employee (id, name, birthday, email) values (19, 'Luci Burghall', '1990-07-26', 'lburghalli@usa.gov');
insert into employee (id, name, birthday, email) values (20, 'Keefer Gilley', '2019-10-07', 'kgilleyj@rambler.ru');
insert into employee (id, name, birthday, email) values (21, 'Keenan Caswall', '2000-10-01', 'kcaswallk@yellowbook.com');
insert into employee (id, name, birthday, email) values (22, 'Cherri Haslewood', '2002-06-03', 'chaslewoodl@deliciousdays.com');
insert into employee (id, name, birthday, email) values (23, 'Clark Tiley', '2000-09-19', 'ctileym@huffingtonpost.com');
insert into employee (id, name, birthday, email) values (24, 'Mallory Damrell', '2019-03-08', 'mdamrelln@cdbaby.com');
insert into employee (id, name, birthday, email) values (25, 'Winnah Radcliffe', '2019-09-25', 'wradcliffeo@prnewswire.com');
insert into employee (id, name, birthday, email) values (26, 'Asia Balle', '1992-01-03', 'aballep@cafepress.com');
insert into employee (id, name, birthday, email) values (27, 'Joan Daulby', '2020-08-10', 'jdaulbyq@phoca.cz');
insert into employee (id, name, birthday, email) values (28, 'Estrellita Dally', '2017-02-11', 'edallyr@timesonline.co.uk');
insert into employee (id, name, birthday, email) values (29, 'Shayne Garralts', '2018-07-24', 'sgarraltss@gizmodo.com');
insert into employee (id, name, birthday, email) values (30, 'Erskine Hanssmann', '2019-04-11', 'ehanssmannt@mayoclinic.com');
insert into employee (id, name, birthday, email) values (31, 'Clare Lampbrecht', '1999-03-05', 'clampbrechtu@mayoclinic.com');
insert into employee (id, name, birthday, email) values (32, 'Shelbi Eouzan', '2002-02-13', 'seouzanv@ameblo.jp');
insert into employee (id, name, birthday, email) values (33, 'Reed Hartopp', '2007-02-14', 'rhartoppw@elegantthemes.com');
insert into employee (id, name, birthday, email) values (34, 'Vinnie Heelis', '2013-12-26', 'vheelisx@mashable.com');
insert into employee (id, name, birthday, email) values (35, 'Janel Dillway', '2019-05-24', 'jdillwayy@i2i.jp');
insert into employee (id, name, birthday, email) values (36, 'Kippie Blonfield', '2001-12-04', 'kblonfieldz@freewebs.com');
insert into employee (id, name, birthday, email) values (37, 'Marylou Oliver', '2009-09-21', 'moliver10@linkedin.com');
insert into employee (id, name, birthday, email) values (38, 'Dani Gasgarth', '2000-09-05', 'dgasgarth11@mediafire.com');
insert into employee (id, name, birthday, email) values (39, 'Maurie Grishenkov', '2016-04-03', 'mgrishenkov12@edublogs.org');
insert into employee (id, name, birthday, email) values (40, 'Egon Janata', '2019-04-12', 'ejanata13@etsy.com');
insert into employee (id, name, birthday, email) values (41, 'Christal Cohen', '2018-03-27', 'ccohen14@so-net.ne.jp');
insert into employee (id, name, birthday, email) values (42, 'Gnni Wickey', '1992-09-09', 'gwickey15@yellowbook.com');
insert into employee (id, name, birthday, email) values (43, 'Cameron Nazaret', '1992-11-27', 'cnazaret16@artisteer.com');
insert into employee (id, name, birthday, email) values (44, 'Adele Ovett', '2003-01-05', 'aovett17@wufoo.com');
insert into employee (id, name, birthday, email) values (45, 'Georgy Kersey', '2007-10-23', 'gkersey18@gnu.org');
insert into employee (id, name, birthday, email) values (46, 'Dari Jephson', '2013-04-08', 'djephson19@qq.com');
insert into employee (id, name, birthday, email) values (47, 'Madalyn Simmins', '2006-07-30', 'msimmins1a@hibu.com');
insert into employee (id, name, birthday, email) values (48, 'Robinia Segar', '2007-08-17', 'rsegar1b@ted.com');
insert into employee (id, name, birthday, email) values (49, 'Gav Crickmore', '2000-05-08', 'gcrickmore1c@ft.com');
insert into employee (id, name, birthday, email) values (50, 'Audy Mauro', '2004-01-30', 'amauro1d@nymag.com');


/* SORU 3 */
UPDATE employee
    SET name = 'Hasan Çağlar' 
    WHERE id = 1
    RETURNING *;

UPDATE employee
    SET birthday = '1990-02-11' 
    WHERE name LIKE 'A%'
    RETURNING *;

UPDATE employee
    SET email = 'test@mail.com' 
    WHERE name = 'Hasan Çağlar'
    RETURNING *;

UPDATE employee
    SET name = 'John Doe',
        birthday = '1990-02-02',
        email = 'johndoe@mail.com'
    WHERE name = 'Audy Mauro'
    RETURNING *;

UPDATE employee
    SET name = 'DELETED',
	    birthday = '0000-00-00',
	    email = 'null'
    WHERE id BETWEEN 15 AND 20
    RETURNING *;


/* SORU 4 */
DELETE FROM employee
    WHERE id = 1
    RETURNING *;
    
DELETE FROM employee
    WHERE birthday = '0000-00-00'
    RETURNING *;

DELETE FROM employee
    WHERE name LIKE 'A%'
    RETURNING *;

DELETE FROM employee
    WHERE birthday > '2014-01-01'
    RETURNING *;

DELETE FROM employee
    WHERE email = 'null'
    OR name = 'John Doe'
    OR birthday = '0000-00-00'
    RETURNING *;

```
</details>

------------


## :arrow_forward: Ödev 9

1.  **city** tablosu ile **country** tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
2.  **customer** tablosu ile **payment** tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
3.  **customer** tablosu ile **rental** tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.


### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
/* SORU 1 */
SELECT city, country FROM city
	INNER JOIN country
	ON city.city_id = country.country_id;


/* SORU 2 */
SELECT payment_id, first_name, last_name FROM customer 
	INNER JOIN payment
	ON payment.customer_id = customer.customer_id;


/* SORU 3 */
SELECT rental_id, first_name, last_name FROM customer 
	INNER JOIN rental
	ON rental.customer_id = customer.customer_id;

```
</details>

------------


## :arrow_forward: Ödev 10

1.  **city** tablosu ile **country** tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
2. **customer** tablosu ile **payment** tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
3.  **customer** tablosu ile **rental** tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.


### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
/* SORU 1 */
SELECT city, country FROM city
	LEFT JOIN country
	ON city.city_id = country.country_id;


/* SORU 2 */
SELECT payment_id, first_name, last_name FROM customer 
	RIGHT JOIN payment
	ON payment.customer_id = customer.customer_id;


/* SORU 3 */
SELECT rental_id, first_name, last_name FROM customer 
	FULL JOIN rental
	ON rental.customer_id = customer.customer_id;

```
</details>

------------


## :arrow_forward: Ödev 11

1.  **actor** ve **customer** tablolarında bulunan **first_name** sütunları için tüm verileri sıralayalım.
2.  **actor** ve **customer** tablolarında bulunan **first_name** sütunları için kesişen verileri sıralayalım.
3.  **actor** ve **customer** tablolarında bulunan **first_name** sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
4.  İlk 3 sorguyu tekrar eden veriler için de yapalım.


### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
/* SORU 1 */
(SELECT first_name FROM actor)
	UNION (SELECT first_name FROM customer)
	ORDER BY first_name;


/* SORU 2 */
(SELECT first_name FROM actor)
	INTERSECT(SELECT first_name FROM customer)
	ORDER BY first_name;


/* SORU 3 */
(SELECT first_name FROM actor)
	EXCEPT(SELECT first_name FROM customer)
	ORDER BY first_name;


/* SORU 4 */
(SELECT first_name FROM actor)
	UNION ALL (SELECT first_name FROM customer)
	ORDER BY first_name;

(SELECT first_name FROM actor)
	INTERSECT ALL(SELECT first_name FROM customer)
	ORDER BY first_name;

(SELECT first_name FROM actor)
	EXCEPT ALL (SELECT first_name FROM customer)
	ORDER BY first_name;

```
</details>

------------


## :arrow_forward: Ödev 12

1.  **film** tablosunda film uzunluğu **length** sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
2.  **film** tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
3.  **film** tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
4.  **payment** tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


### :white_check_mark: Cevap :
<details>
  <summary>Kodu Gör!</summary>
  
 ```sql
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
```
</details>

------------
