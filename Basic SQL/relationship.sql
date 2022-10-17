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

-- Second table with relatable foreign keys:
CREATE TABLE photos(
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  -- Relationship generation:
  user_id INTEGER REFERENCES users(id)
);

--  insert values:
INSERT INTO
  photos (url, user_id)
VALUES
  ('http://one.jpg', 4),
  ('http://two.jpg',4),
  ('http://three.jpg',1),
  ('http://four.jpg',2);