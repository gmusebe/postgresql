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

-- Where with Join
SELECT
  url,
  contents
FROM
  photos
  INNER JOIN comments ON comments.photo_id = photos.id
WHERE
  comments.user_id = photos.user_id;


--  Three way join
SELECT
  url,
  contents,
  username
FROM
  photos
  INNER JOIN comments ON comments.photo_id = photos.id
  INNER JOIN users ON users.id = comments.user_id
  AND users.id = photos.user_id

Exercise:
SELECT
  title,
  rating,
  name
FROM
  books
  JOIN reviews ON reviews.book_id = books.id
  JOIN authors ON authors.id = reviews.reviewer_id
  AND authors.id = books.author_id;
