/* Database schema to keep the structure of entire database. */

CREATE TABLE IF NOT EXISTS public.animals
(
    id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg real,
    species character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT animals_pkey PRIMARY KEY (id)
)
