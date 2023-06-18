--2.film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?

SELECT rating, COUNT(rating) AS Counter FROM film
GROUP BY rating
HAVING COUNT(rating) = (SELECT MAX(rate) AS rat FROM (SELECT COUNT(rating) AS rate FROM film
GROUP BY rating) AS ss)



