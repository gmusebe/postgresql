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

-- Subqueries with the Where clause;
-- Show the id of orders that involve a product with a price/weight ratio greater than 5;
SELECT
  id
FROM
  orders
WHERE
  product_id IN --   What are the products with a price/weight ratio greater than 5?
  --    single list
  (
    SELECT
      id
    FROM
      products
    WHERE
      price / weight > 5
  );

-- Exercise with WHERE subquery;
-- SHOW the name of all products with a price greater than the average product price
SELECT
  name
FROM
  products
WHERE
  price > (
    SELECT
      AVG(price)
    FROM
      products
  )

-- Show the name of all products that are not in the same department as producrs with a price less than 100:
SELECT
  name
FROM
  products
WHERE
  department NOT IN (
    SELECT
      department
    FROM
      products
    WHERE
      price < 100
  );

-- Gretater than ALL:
SELECT
  name,
  department,
  price
FROM
  products
WHERE
  price > ALL (
    SELECT
      price
    FROM
      products
    WHERE
      department = 'Industrial'
  );

-- Show the name of products that are more expensive that at aleast one product in the indusrial department:
SELECT
  name
FROM
  products
WHERE
  price > SOME (
    SELECT
      price
    FROM
      products
    WHERE
      department = 'Industrial'
  )

-- Correlated Subqueries
-- Query: Show name, department abd price of the most expensive product in each department:
SELECT name, department, price
FROM products AS p1
WHERE p1.price = (
    SELECT MAX(price)
    FROM products AS p2
    WHERE p1.department = p2.department
  );

-- Without using a join or a group by, print the number of orders for each productALTER
SELECT name,
  (
    SELECT COUNT(*)
    FROM orders AS o1
    WHERE o1.product_id = p1.id
  ) AS num_orders
FROM products AS p1;

-- A SELECT without a FROM
-- possible with a subquery with a single value:
SELECT (
  SELECT MAX(price)
  FROM products
);