/* Database schema to keep the structure of entire database. */
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS species;

CREATE TABLE IF NOT EXISTS owners (
    id SERIAL PRIMARY KEY NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    age NUMERIC NOT NULL
);

CREATE TABLE IF NOT EXISTS species (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS animals (
    id SERIAL PRIMARY KEY NOT NULL,
    species_id INT,
    owners_id INT,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts NUMERIC NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL NOT NULL,
    FOREIGN KEY (species_id)
      REFERENCES species (id),
    FOREIGN KEY (owners_id)
      REFERENCES owners (id)
);