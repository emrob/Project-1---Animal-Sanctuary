DROP TABLE adoptions;
DROP TABLE animals;
DROP TABLE owners;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  age INT,
  arrival_date DATE NOT NULL,
  adoption_status VARCHAR(255),
  photo VARCHAR(255)
);

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INT

);



CREATE TABLE adoptions (
  id SERIAL PRIMARY KEY,
  owner_id INT REFERENCES owners(id) ON DELETE CASCADE,
  animal_id INT REFERENCES animals(id) ON DELETE CASCADE
);
