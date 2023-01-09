-- simple cte
WITH tags AS (
  SELECT user_id, created_at FROM caption_tags
  UNION ALL
  SELECT user_id, created_at FROM photo_tags
)

SELECT users.username, tags.created_at
FROM users
  JOIN tags ON tags.user_id = users.id
WHERE
  tags.created_at < '2010-01-07';


-- Recursive CTE's
WITH RECURSIVE countdown(val) AS (
  SELECT 3 AS val
  UNION
  SELECT val - 1 FROM countdown WHERE val > 1
)

SELECT *
FROM countdown;


--  instagram example:
-- Why follow the suggested users on instagram
WITH RECURSIVE suggestions(leader_id, follower_id, depth) AS (
    SELECT leader_id, follower_id, 1 AS depth
    FROM followers
    WHERE follower_id = 1000
  UNION
    SELECT followers.leader_id, followers.follower_id, depth + 1
    FROM followers
          JOIN suggestions On suggestions.leader_id = followers.follower_id
    WHERE depth < 3
)

SELECT DISTINCT users.id, users.username
FROM suggestions
    JOIN users ON users.id = suggestions.leader_id
WHERE depth > 1
LIMIT 30;


 ~Views:......
WITH tags AS (
  SELECT user_id FROM caption_tags
  UNION ALL
  SELECT user_id FROM photo_tags
)

Alternative create a View
CREATE VIEW tags AS(
  SELECT id, created_at, user_id, post_id, 'photo_tag' AS type FROM photo_tags
  UNION ALL
  SELECT id, created_at, user_id, post_id, 'caption_tag' AS type FROM caption_tags
);

SELECT users.username, COUNT(*)
FROM users
  JOIN tags ON users.id = tags.user_id
GROUP BY users.username
ORDER BY count DESC;
