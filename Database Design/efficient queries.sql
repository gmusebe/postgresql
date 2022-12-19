-- Index - prevents a  full scan of a query thus enhances the performance of postgreSQL.
-- An Index is an external record that tells us exactly where a record is stored inside of a heap file.

-- Automated indices in the db:
SELECT relname, relkind
FROM pg_class
WHERE relkind = 'i';

-- creating an index
CREATE INDEX ON users(username);

-- size of Index:
SELECT pg_size_pretty(pg_relation_size('users'));
SELECT pg_size_pretty(pg_relation_size('users_username_idx'));

-- Drop an Index:
DROP INDEX users_username_idx;


-- Test Performance with Index = 0.057ms, without Index = 1.242ms:
EXPLAIN ANALYSE SELECT *
FROM users
WHERE username = 'Emil30';


-- Show Postgrel plan of execution:
EXPLAIN SELECT username, contents
FROM
  users
  JOIN comments ON comments.user_id = users.id
WHERE username = 'Alyson14';

-- execution efficiency in time:
EXPLAIN SELECT username, contents
FROM
  users
  JOIN comments ON comments.user_id = users.id
WHERE username = 'Alyson14';