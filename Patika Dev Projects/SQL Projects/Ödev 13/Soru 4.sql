--4.category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.

SELECT category.name, lin.count FROM
(SELECT category_id, COUNT(category_id)  FROM film_category
GROUP BY category_id) AS lin
JOIN category ON lin.category_id = category.category_id
ORDER BY lin.count DESC