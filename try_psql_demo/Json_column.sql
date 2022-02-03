CREATE TABLE jsonorders (
	id serial NOT NULL PRIMARY KEY,
	info json NOT NULL
);

-- Insert JSON data
INSERT INTO jsonorders (info)
VALUES('{ "customer": "Lily Bush", "items": ["product", "Diaper","qty", 24],"last": ["product", "Diaper","qty", 24]}'),
      ('{ "customer": "Josh William", "items": ["product", "Toy Car","qty", 1],"last": ["product", "Diaper","qty", 24]}'),
      ('{ "customer": "Mary Clark", "items": ["product", "Toy Train","qty", 2],"last": ["product", "Diaper","qty", 24]}');

-- Querying JSON data
SELECT info FROM jsonorders;

-- The operator -> returns JSON object field by key.
-- The operator ->> returns JSON object field by text.

SELECT info -> 'customer' AS customer
FROM jsonorders;

SELECT info -> 'items' AS customer
FROM jsonorders;

SELECT info -> 'last' AS customer
FROM jsonorders;


SELECT info ->> 'customer' AS customer
FROM jsonorders;


SELECT info -> 'items' ->> 'product' as product
FROM jsonorders
ORDER BY product;


-- Use JSON operator in WHERE clause

SELECT info ->> 'customer' AS customer
FROM jsonorders
WHERE info -> 'items' ->> 'product' = 'Diaper';




SELECT info ->> 'customer' AS customer,
	info -> 'items' ->> 'product' AS product
FROM jsonorders
WHERE CAST ( info -> 'items' ->> 'qty' AS INTEGER) = 2




-- Apply aggregate functions to JSON data

SELECT 
   MIN (CAST (info -> 'items' ->> 'qty' AS INTEGER)),
   MAX (CAST (info -> 'items' ->> 'qty' AS INTEGER)),
   SUM (CAST (info -> 'items' ->> 'qty' AS INTEGER)),
   AVG (CAST (info -> 'items' ->> 'qty' AS INTEGER))
FROM jsonorders;


-- PostgreSQL JSON functions

-- json_each function

SELECT json_each (info)
FROM jsonorders;


-- json_object_keys function
SELECT json_object_keys (info->'items')
FROM jsonorders;

-- json_typeof function
SELECT json_typeof (info->'items')
FROM jsonorders;


SELECT json_typeof (info->'items'->'qty')
FROM jsonorders;




