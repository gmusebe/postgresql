-- Optimizing Queries with Materialized Views

SELECT
    date_trunc('week', COALESCE(posts.created_at, comments.created_at)) AS week,
    COUNT(posts.id) AS num_likes_posts,
    COUNT(comments.id) AS num_lines_comments
FROM likes
LEFT JOIN posts ON posts.id = likes.post_id
LEFT JOIN comments ON comments.id = likes.comment_id
GROUP BY week
ORDER BY week;

-- Materialized view
CREATE MATERIALIZED VIEW weekly_likes AS (
    SELECT
        date_trunc('week', COALESCE(posts.created_at, comments.created_at)) AS week,
        COUNT(posts.id) AS num_likes_posts,
        COUNT(comments.id) AS num_lines_comments
    FROM likes
    LEFT JOIN posts ON posts.id = likes.post_id
    LEFT JOIN comments ON comments.id = likes.comment_id
    GROUP BY week
    ORDER BY week
) WITH DATA;

-- update materialises view after a function
REFRESH MATERIALIZED VIEW weekly_likes;


-- Transactions
-- All or None related quesries are executed
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    balance INTEGER NOT NULL
);

INSERT INTO accounts( name, balance)
VALUES
    ('Gia', 100),
    ('Alyson', 100);

Open a Transaction
BEGIN;