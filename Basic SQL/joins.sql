--  Inner Join
SELECT
  url,
  username
FROM
  photos
  JOIN users ON users.id = photos.user_id;