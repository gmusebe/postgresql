-- SQL code for relationships:
-- Create your first table:
CREATE TABLE users(
  id SERIAL PRIMARY KEY, 
  username VARCHAR(50)
);

-- #postgreSQL automatically generates the key with the function SERIAL

-- Insert the usernames:
INSERT INTO
  users (username)
VALUES
  ('monahan93'),
  ('pferrer'),
  ('si93onis'),
  ('99stroman');
