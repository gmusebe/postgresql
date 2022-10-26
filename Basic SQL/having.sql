--  HAVING function is similar to WHERE.
-- HAVING is used to filter the set of groups while WHERE filters the set of rows

-- Anytime we have to do filtering along with an aggregate functio, this is the condition that satisfies using HAVING.

-- Example:
SELECT
	COUNT(*)
FROM
	comments
WHERE
	photo_id < 3
GROUP BY
	photo_id
HAVING
	 COUNT(*) > 2;