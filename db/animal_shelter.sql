DROP TABLE adoptions;
DROP TABLE animals;
DROP TABLE owners;



CREATE TABLE owners (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  age INT

);

CREATE TABLE animals (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  age INT,
  days_in_care INT,
  adoption_status VARCHAR(255)

);

CREATE TABLE adoptions (
  id serial4 PRIMARY KEY,
  owner_id INT8 REFERENCES owners(id),
  animal_id INT8 REFERENCES animals(id)
);
