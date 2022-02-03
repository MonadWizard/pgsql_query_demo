-- INSERT INTO cities (name, country, population, area)
-- VALUES ('Tokyo2', 'japan', 38505000, 82223),
-- ('Tokyo3', 'japan', 38505000, 82223),
-- ('Tokyo4', 'japan', 38505000, 82223);


-- SELECT * FROM cities;

-- SELECT area, name, population FROM cities;

-- SELECT name, name, name FROM cities;

-- calculate population density

-- SELECT name, population / area FROM cities;

-- rename calculated column

-- SELECT name, population / area AS population_density FROM cities;

-- 1st task

-- CREATE TABLE phones (
-- 	user_id serial PRIMARY KEY,
-- 	name VARCHAR ( 50 ) UNIQUE NOT NULL,
-- 	manufacturer VARCHAR ( 50 ) NOT NULL,
-- 	price INTEGER NOT NULL,
-- 	units_sold INTEGER NOT NULL 
-- );

-- INSERT INTO phones (name, manufacturer, price, units_sold)
-- VALUES ('N120', 'Nokia', 599, 4925),
-- ('Iphone 7', 'Apple', 785, 8436),
-- ('Galaxy S12', 'Samsung', 1385, 2223),
-- ('Iphone 10', 'Apple', 400, 5536),
-- ('Galaxy S3', 'Samsung', 285, 10423);



-- SELECT name , price * units_sold as revenue FROM phones

--  STRING CONCATINATION 

-- SELECT name || ', ' || manufacturer as model FROM phones
-- same
-- SELECT CONCAT(name, ',', manufacturer) as phone_model FROM phones

SELECT CONCAT(UPPER(name), ',', LOWER(manufacturer)) as phone_model FROM phones









