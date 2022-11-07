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
