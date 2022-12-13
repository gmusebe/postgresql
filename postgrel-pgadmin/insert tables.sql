CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER,
	weight INTEGER
);

INSERT INTO products(name, department, weight)
VALUES
	('Gloves', 'Tools', 1);

-- Pre-validtion for null:
UPDATE products
SET price = 9999
WHERE price is NULL;

-- Setting validation:
ALTER TABLE products
ALTER COLUMN price
SET NOT NULL;

-- Upfront values
CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	department VARCHAR(40) NOT NULL,
	price INTEGER DEFAULT 9999,
	weight INTEGER
);

-- -- Set default
ALTER TABLE products
ALTER COLUMN price
SET DEFAULT 9999;

-- Unique Constraint for a column:
CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL UNIQUE,
	department VARCHAR(40) NOT NULL,
	price INTEGER DEFAULT 9999,
	weight INTEGER
);

ALTER TABLE products
ADD UNIQUE(name);

-- Drop constraints
ALTER TABLE products
DROP CONSTRAINT products_name_key;

-- Multicolumn uniquneess
ALTER TABLE products
ADD UNIQUE(name, department);

-- Returns error:
INSERT INTO products (name, department, price, weight)
VALUES
	('Shirts', 'Clothes', 24, 1);

-- Drop constraint:
ALTER TABLE products
DROP CONSTRAINT products_name_department_key;
