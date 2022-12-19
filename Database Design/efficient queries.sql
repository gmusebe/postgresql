-- Index - prevents a  full scan of a query thus enhances the performance of postgreSQL.
-- An Index is an external record that tells us exactly where a record is stored inside of a heap file.

-- creating an index
CREATE INDEX ON users(username);

-- Drop an Index:
DROP INDEX users_username_idx;

-- Test Performance with Index = 0.057ms, without Index = 1.242ms:
EXPLAIN ANALYSE SELECT *
FROM users
WHERE username = 'Emil30';