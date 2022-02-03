-- SELECT product_id FROM ordersnew
-- CREATE INDEX ON ordersnew (product_id);

SELECT * FROM ordersnew WHERE product_id=46;

EXPLAIN ANALYZE SELECT * FROM ordersnew WHERE product_id=46;


-- DROP INDEX ordersnew_product_id_idx