CREATE TABLE milliontable(
   name varchar(10),
   age integer,
   joindate date
);


INSERT INTO milliontable (name, age, joindate)
SELECT substr(md5(random()::text), 1, 10),
       (random() * 70 + 10)::integer,
       DATE '2018-01-01' + (random() * 700)::integer
FROM generate_series(1, 1000000);


SELECT count(name) FROM milliontable;

SELECT age FROM milliontable WHERE name='f009d421c8';

-- f009d421c8

CREATE INDEX idx_million_data 
ON milliontable(name);





