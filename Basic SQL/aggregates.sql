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

--  Aggregates & GROUP BY
SELECT
  user_id,
  MAX(id)
FROM
  comments
GROUP BY
  User_id;

--  Count the number of comments made by a user:
SELECT
  user_id,
  COUNT(id) AS num_comments_created
FROM
  comments
GROUP BY
  User_id;

-- Count the total number of records:
SELECT
  COUNT(*)
FROM
  comments;
--  join in group by
SELECT
	 name,
   COUNT(*)
FROM
	 books
   JOIN authors ON authors.id = book.authord_id
GROUP BY
	authors.name