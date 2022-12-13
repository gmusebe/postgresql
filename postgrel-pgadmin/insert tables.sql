-- CREATE TABLE products(
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(40),
-- 	department VARCHAR(40),
-- 	price INTEGER,
-- 	weight INTEGER
-- );

-- INSERT INTO products(name, department, weight)
-- VALUES
-- 	('Pants', 'Clothes', 3)

-- Pre-validtion for null:
-- UPDATE products
-- SET price = 9999
-- WHERE price is NULL;

-- Setting validation:
ALTER TABLE products
ALTER COLUMN price
SET NOT NULL;