DROP TABLE animals;
-- DROP TABLE owners;

CREATE TABLE animals (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  age INT,
  days_in_care INT
  -- ready_for_adoption BOOLEAN

);

-- CREATE TABLE owners (
--   id serial4 PRIMARY KEY,
--   name VARCHAR(255),
--   age INT
-- );
