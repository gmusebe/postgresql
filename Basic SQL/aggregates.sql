-- Picturing Grouping Technique
SELECT
  user_id
FROM
  comments
GROUP BY
  User_id;
-- Used to find the unique value in a column/variable

--  Aggregate function
-- COUNT()
-- How many ids do we have all together:
SELECT
  COUNT(id)
FROM
  comments;


-- SUM()
--  What is the sum of all the ids:
SELECT
  SUM(id)
FROM
  comments;

-- AVG()
-- Average id:
SELECT
  AVG(id)
FROM
  comments;


-- MIN()
-- Fid minimum id:
SELECT
  MIN(id)
FROM
  comments;


-- MAX()
-- Find comment with the largest id:
SELECT
  MAX(id)
FROM
  comments;

