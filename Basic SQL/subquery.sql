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

-- Subquery in FROM: In Returning a table
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

-- FROM subquery in returning a single value
SELECT
  *
FROM
  (
    SELECT
      MAX(price)
    FROM
      products
  ) AS p

--  From subquery in GROUPBY
SELECT
	AVG(p.order_count)
FROM
  (
    SELECT
      user_id,
      COUNT(*) AS order_count
    FROM
      orders
    GROUP BY
      user_id
  ) AS p;

--  subquery exercise
SELECT
	MAX(p.avg_price) AS max_average_price
FROM
  (
    SELECT
      AVG(price) AS avg_price
    FROM
      phones
    GROUP BY
      manufacturer
  ) AS 	p;

  --  user queries in a JOIN Clause:
SELECT
  first_name
FROM
  users
  INNER JOIN (
    SELECT user_id FROM orders WHERE product_id = 3
  ) As o
ON o.user_id = users.id;
  