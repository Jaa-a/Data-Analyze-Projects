--3.cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?

SELECT customer.first_name, customer.last_name, lin.count
FROM 
(SELECT payment.customer_id, COUNT(payment.customer_id) FROM payment
GROUP BY payment.customer_id) AS lin
INNER JOIN customer ON customer.customer_id = lin.customer_id
ORDER BY lin.count DESC
LIMIT 1;