/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, neutered, escape_attempts, weight_kg, species_id, owner_id) 
VALUES ('Agumon', '2020-02-03', true, 0, 10.23, 2, 1),
       ('Gabumon', '2018-11-15', true, 2, 8, 2, 2),
       ('Pikachu', '2021-01-07', false, 1, 15.04, 1, 2),
       ('Devimon', '2017-05-12', true, 5, 11, 2, 3),
       ('Charmander', '2020-02-08', false, 0, -11, 1, 6),
       ('Plantmon', '2021-11-15', true, 2, -5.7, 2, 5),
       ('Squirtle', '1993-04-02', false, 3, -12.13, 1, 6),
       ('Angemon', '2005-06-12', true, 1, -45, 2, 5),
       ('Boarmon', '2005-06-07', true, 7, 20.4, 2, 6),
       ('Blossom', '1998-10-13', true, 3, 17, 1, 6),
       ('Ditto', '2022-05-14', true, 4, 22, 1, 4);

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

INSERT INTO vets (name, age, date_of_graduation) VALUES
  ('William Tatcher', 45, '2000-04-23'),
  ('Maisy Smith', 26, '2019-01-17'),
  ('Stephanie Mendez', 64, '1981-05-04'),
  ('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (vet_id, species_id) VALUES
  (1, 1),
  (3, 2),
  (3, 1),
  (4, 2);

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES
  (1, 1, '2020-05-24'),
  (1, 3, '2020-07-22'),
  (2, 4, '2021-02-02'),
  (3, 2, '2020-01-05'),
  (3, 2, '2020-03-08'),
  (3, 2, '2020-05-14'),
  (4, 3, '2021-05-04'),
  (6, 4, '2021-02-24'),
  (5, 2, '2019-12-21'),
  (5, 1, '2020-08-10'),
  (5, 2, '2021-04-07'),
  (7, 3, '2019-09-29'),
  (9, 4, '2020-10-03'),
  (9, 4, '2020-11-04'),
  (10, 2, '2019-01-24'),
  (10, 2, '2019-05-15'),
  (10, 2, '2020-02-27'),
  (10, 2, '2020-08-03'),
  (8, 3, '2020-05-24'),
  (8, 1, '2021-01-11');
