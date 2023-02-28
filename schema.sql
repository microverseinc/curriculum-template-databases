/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id INTEGER PRIMARY KEY,
  name VARCHAR(100),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL(5,2),
);

ALTER TABLE animals ADD COLUMN species VARCHAR(100);
