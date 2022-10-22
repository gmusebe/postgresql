-- Joins & tables
-- using the exercise tables

--  For each comment, show the
-- 1. Contents of the comment and
-- 2. The username of the user who wrote the comment

SELECT
  contents,
  username
FROM
  comments
-- Join; we want to combine info from rows
-- already selected with some from users table

-- For every row in the users table check every id
-- match that up with the row from the comments table using 
-- the value of the user_id:
  JOIN users ON users.id = comments.user_id;

-- Another Example:
SELECT
  contents,
  url
FROM
  comments
  JOIN photos ON photos.id = comments.photo_id;