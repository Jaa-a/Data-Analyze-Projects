-- 1.Soru:city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT city.city, country.country FROM city
INNER JOIN country ON city.country_id = country.country_id;