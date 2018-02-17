DROP TABLE animals;
DROP TABLE owners;

CREATE TABLE animals (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  age INT,
  days_in_care INT,
  adoption_status VARCHAR(255)

);

CREATE TABLE owners (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  age INT

);
