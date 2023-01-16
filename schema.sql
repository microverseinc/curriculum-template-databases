/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INTEGER,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

ALTER TABLE animals ADD COLUMN species VARCHAR(255);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age INTEGER
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

ALTER TABLE animals ALTER COLUMN id SERIAL PRIMARY KEY;
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INTEGER;
ALTER TABLE animals ADD COLUMN owner_id INTEGER;
ALTER TABLE animals ADD CONSTRAINT species_id FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD CONSTRAINT owners_id FOREIGN KEY (owner_id) REFERENCES owners(id);
