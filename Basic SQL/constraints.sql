-- On Delete Restrict  “Throw an error”:
DELETE FROM
	users
WHERE
	id = 1;

-- Error: update or delete on table "users" violates foreign key constraint "photos_user_id_fkey" on table "photos"

-- On Delete Cascade  “Delete the photo too”
-- When you delete a record with a serial id delete the record that references the record as well. This is good when delete a user and all records associated with it. (One to Many)

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
-- placed on the foreign key of the refferencing table
);
INSERT INTO
  photos (url, user_id)
VALUES
  ('http:/one.jpg', 4),
  ('http:/two.jpg', 1),
  ('http:/25.jpg', 1),
  ('http:/36.jpg', 1),
  ('http:/754.jpg', 2),
  ('http:/35.jpg', 3),
  ('http:/256.jpg', 4);

	-- Now the below will be successful:
DELETE FROM
  users
WHERE
  id = 1;

-- On Delete Set Null  “Set the ‘user_id’ of the photo to NULL”
CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE
  SET
    NULL
);

-- Replaces the referencing record to null.

-- To learn more about foreign keys: https://www.w3schools.com/SQL/sql_ref_foreign_key.asp