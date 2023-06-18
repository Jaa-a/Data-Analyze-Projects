--5.film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?

SELECT COUNT(*) FROM
(SELECT title FROM film
WHERE title ILIKE '%e%e%e%e%') AS e