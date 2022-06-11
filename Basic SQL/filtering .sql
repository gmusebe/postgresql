--  Filtering Records
-- Returns values of column name & area
-- with area greater than 4000
SELECT
  name,
  area
FROM
  Cities
WHERE
  area > 4000;

-- Not equal to
SELECT
  name,
  area
FROM
  Cities
WHERE
  area != 8223;
-- Also <>

-- Values falling between:
SELECT
  name,
  area
FROM
  Cities
WHERE
  area BETWEEN 2000
  AND 4000;

--  in and not in
SELECT
  name,
  area
FROM
  Cities
WHERE
  name IN ('Delhi', 'Shanghai');
-- replace IN with NOT IN

-- Compound conditions
SELECT
  name,
  area
FROM
  Cities
WHERE
  area NOT IN (3043, 8223)
  AND name = 'Delhi';
-- replace AND with OR