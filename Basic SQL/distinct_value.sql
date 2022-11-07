-- The function will give you a list of all unique values inside of a column.
-- USE; print out the number of unique values
SELECT
  DISTINCT department
FROM
  products;

SELECT
  COUNT(DISTINCT department)
FROM
  products;
-- Similar to GROUP BY

-- Multiple unique values unique combinations
SELECT
  DISTINCT department, name
FROM
  products;

-- ---Greatest Value
SELECT GREATEST(20, 10, 30);
-- USE:
-- if 2 * weight < 30 return 30 or 2 * weight if > 30. Return the greatest of the two;
SELECT name, weight, GREATEST(30, 2 * weight)
FROM products;

-- LEAST
SELECT LEAST(1, 20, 50, 100);
SELECT name, price, LEAST(price * 0.5, 400)
FROM products;

-- CASE
-- If else not inputed we will have a 'null'
SELECT
  name,
  price,
  CASE
    WHEN price / weight > 600 THEN 'high'
    WHEN price > 300 THEN 'medium'
    ELSE 'cheap'
  END
FROM
  products;