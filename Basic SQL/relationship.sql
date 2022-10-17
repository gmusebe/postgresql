-- SQL code for relationships:
-- Create your first table:
CREATE TABLE users(
  id SERIAL PRIMARY KEY, 
  username VARCHAR(50)
);

-- #postgreSQL automatically generates the key with the function SERIAL