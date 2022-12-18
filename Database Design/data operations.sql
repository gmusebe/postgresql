-- Count all the instagram users:
SELECT COUNT(*)
FROM users;

-- How many likes are there:
SELECT COUNT(*)
FROM likes;

--  Three users with the highest IDs:
SELECT *
FROM users
ORDER BY id DESC
LIMIT 3;

-- Join users and posts table
-- Show the username of user ID 200 and the camption of all posts
SELECT username, caption
FROM
  users
  JOIN posts on posts.user_id = users.id
WHERE posts.user_id = 200;

-- Show each username & number of likes created:
SELECT username, COUNT(*)
FROM
  users
  JOIN likes ON likes.user_id = users.id
GROUP BY
  username;