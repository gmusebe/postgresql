-- Create Table
CREATE TABLE Cities(
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

-- Insert values in Table
INSERT INTO Cities (name, country, population, area)
VALUES
	('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);

-- Retrieve info from table
-- * Retrieve all column data
SELECT * FROM Cities;

-- Retrieve specific column data
SELECT name, country FROM Cities;