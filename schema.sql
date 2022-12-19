/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
   id integer NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY, name varchar(100), date_of_birth date, escape_attempts integer, 
	neutered boolean, weight_kg decimal);

/* Day2 */

ALTER TABLE animals
  ADD species varchar(40);

/* Day3 */

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(255),
    age integer
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(255)
);


ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id INTEGER REFERENCES species(id);
ALTER TABLE animals ADD owner_id INTEGER REFERENCES owners(id);    


/* Day4 */

CREATE TABLE vets (

    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    date_of_graduation DATE
);

CREATE TABLE specializations (

    id SERIAL PRIMARY KEY,
    vets_id INTEGER REFERENCES vets(id) ON DELETE CASCADE,
	species_id INTEGER REFERENCES species(id) ON DELETE CASCADE
);

CREATE TABLE visits (
    vets_id INTEGER REFERENCES vets(id) ON DELETE CASCADE,
	animals_id INTEGER REFERENCES animals(id) ON DELETE CASCADE,
	date_of_visit DATE
);


/* day 5, 2nd week -- Pair Programming */

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

/* change COLUMN NAMEs of VISITS Table ------ animals_id to animal_id and vets_id to vet_id */

ALTER TABLE visits RENAME COLUMN animals_id TO animal_id;
ALTER TABLE visits RENAME COLUMN vets_id TO vet_id;


CREATE index ON visits(animal_id);

CREATE index ON visits(vet_id);

CREATE index ON owners(email);