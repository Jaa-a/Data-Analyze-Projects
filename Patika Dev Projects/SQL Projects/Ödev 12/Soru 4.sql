--4.payment tablosunda en fazla sayıda! alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer_id, COUNT(customer_id) AS eq FROM payment
GROUP BY customer_id
HAVING COUNT(customer_id) = (
	SELECT MAX(sell) 
	FROM (
		SELECT customer_id, COUNT(customer_id) AS sell 
		  FROM payment 
		GROUP BY customer_id) AS maxsell
)
