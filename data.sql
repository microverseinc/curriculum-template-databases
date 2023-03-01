/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg) 
VALUES ('Agumon', '2020-02-03', true, 0, 10.23),
       ('Gabumon', '2018-11-15', true, 2, 8),
       ('Pikachu', '2021-01-07', false, 1, 15.04),
       ('Devimon', '2017-05-12', true, 5, 11);


INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species) 
VALUES ('Charmander', '2020-02-08', -11, false, 0, ''),
       ('Plantmon', '2021-11-15', -5.7, true, 2, ''),
       ('Squirtle', '1993-04-02', -12.13, false, 3, ''),
       ('Angemon', '2005-06-12', -45, true, 1, ''),
       ('Boarmon', '2005-06-07', 20.4, true, 7, ''),
       ('Blossom', '1998-10-13', 17, true, 3, ''),
       ('Ditto', '2022-05-14', 22, true, 4, '');

INSERT INTO owners (full_name, age) VALUES
  ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES
  ('Pokemon'),
  ('Digimon');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id) VALUES
  ('Agumon', '2015-01-01', 0, true, 10.5, 2, 1),
  ('Gabumon', '2018-06-15', 2, false, 15.2, 2, 2),
  ('Pikachu', '2017-03-27', 1, true, 3.8, 1, 2),
  ('Devimon', '2019-12-31', 0, false, 25.1, 2, 3),
  ('Plantmon', '2020-04-22', 0, true, 8.7, 2, 3),
  ('Charmander', '2016-09-10', 0, false, 6.3, 1, 4),
  ('Squirtle', '2017-11-03', 1, true, 9.8, 1, 4),
  ('Blossom', '2018-02-14', 0, false, 3.2, 1, 4),
  ('Angemon', '2015-07-20', 3, false, 18.5, 2, 5),
  ('Boarmon', '2017-05-01', 0, true, 12.6, 1, 5);
