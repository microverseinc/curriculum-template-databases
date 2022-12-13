/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
   id integer, name varchar(100), date_of_birth date, escape_attempts integer, 
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

ALTER TABLE IF EXISTS public.animals
    ADD COLUMN id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 );


ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id INTEGER REFERENCES species(id);
ALTER TABLE animals ADD owner_id INTEGER REFERENCES owners(id);    