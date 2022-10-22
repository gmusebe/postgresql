--  Inner Join:
SELECT
  url,
  username
FROM
  photos
  JOIN users ON users.id = photos.user_id;

-- Left Join:
SELECT
  url,
  username
FROM
  photos
  LEFT JOIN users ON users.id = photos.user_id;

-- Right Join:
SELECT
  url,
  username
FROM
  photos
  RIGHT JOIN users ON users.id = photos.user_id;

-- Full join:
SELECT
  url,
  username
FROM
  photos
  FULL JOIN users ON users.id = photos.user_id;