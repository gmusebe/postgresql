--  Subquery
SELECT
  name,
  price
FROM
  products
WHERE
  price > (
    SELECT
      MAX(price)
    FROM
      products
    WHERE
    department = 'Toys'
  );


-- Sub example:
SELECT
  name,
  price,
  (
    SELECT
      MAX(price)
    FROM
      products
  )
FROM
  products
WHERE
  price > 876;

-- Ex.2
SELECT
  name,
  price,
  (
    SELECT
      price
    FROM
      products
    WHERE
    	id = 3
  ) AS id_3_price
FROM
  products
WHERE
  price > 876;

-- Ex. 3 Subquery in  SELECT
SELECT
  name,
  price,
  price / (
    SELECT
      MAX(price)
    FROM
      phones
  ) AS price_ratio
FROM
  phones 

-- Subquery in FROM:
SELECT
  name,
  price_weight_ratio
FROM
  (
    SELECT
      name,
      price / weight AS price_weight_ratio
    FROM
      products
  ) AS p
WHERE
  price_weight_ratio > 5;
