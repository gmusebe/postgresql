-- Create Table
CREATE TABLE Cities(
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

-- Insert values in Table
INSERT INTO
  Cities (name, country, population, area)
VALUES
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);

-- Retrieve info from table
-- * Retrieve all column data
SELECT * FROM Cities;

-- Retrieve specific column data
SELECT name, country FROM Cities;

-- Calculated Column
-- Use math Operators in "/"
SELECT
  name,
  population / area AS population_density
FROM
  Cities;

--  String Operators & Functions
SELECT
  name | ', ' | country AS location
FROM
  Cities;

-- Same as:
SELECT
  CONCAT(UPPER(name), ', ', UPPER(country)) AS location
FROM
  Cities;