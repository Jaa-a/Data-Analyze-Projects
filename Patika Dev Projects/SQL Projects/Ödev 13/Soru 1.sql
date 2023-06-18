--1.film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.

SELECT title, LENGTH(title), replacement_cost FROM film
WHERE title ILIKE 'k%'
ORDER BY length DESC, replacement_cost
LIMIT 4;