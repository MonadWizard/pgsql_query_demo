-- write a query that prints the name and price for each phone.
--In addition, print out the ratioof the phones price against max price of all phones.
-- rename the 3rd column to price_ratio

-- SELECT name, price, price/(SELECT MAX(price) FROM phones) as price_ratio
-- FROM phones;

-- find average number of order for all users.
SELECT AVG(o.orders)
FROM
	(SELECT user_id, COUNT(*) as orders
	FROM ordersnew
	GROUP BY user_id)
AS o;


-- Calculate the average price of phones for each manufacturer.
-- Then print the highest average price.

SELECT MAX(p.avg_price)
FROM(
	SELECT AVG(price) AS avg_price
	FROM phones
	GROUP BY manufacturer
) AS p;
 


-- Write a query that print the name of all phones that have price greater than any phone made by samsung.

SELECT name 
FROM phones
WHERE price > ALL 
(
	SELECT price  
	FROM phones
	WHERE manufacturer='Samsung'
);












