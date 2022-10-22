/* Populate database with sample data. */

-- INSERT ANIMALS
INSERT INTO animals 
(species_id, owners_id, name, date_of_birth, escape_attempts, neutered, weight_kg) 
VALUES
(2, 1, 'Agumon', '2020-02-03', 0, true, 10.23),
(2, 2, 'Gabumon', '2018-11-15', 2, true, 8),
(1, 2, 'Pikachu', '2021-01-7', 1, false, 15.04),
(2, 3, 'Devimon', '2017-05-12', 5, true, 11), 
(1, 4, 'Charmander', '2020-02-08', 0, false, 11),
(2, 3, 'Plantmon', '2021-11-15', 2, true, 5.2),
(1, 4, 'Squirtle', '1993-04-02', 3, false, 12.13),
(2, 5, 'Angemon', '2005-06-12', 1, true, 45),
(2, 5, 'Boarmon', '2005-06-07', 7, true, 20.4),
(1, 4, 'Blossom', '1998-10-13', 3, true, 17),
(1, NULL, 'Ditto', '2022-05-14', 4, true, 22);

-- INSERT OWNERS
INSERT INTO owners 
(full_name, age)
VALUES
('Sam Smith',34),
('Jennifer Orwell',19),
('Bob',45),
('Melody Pond',77),
('Dean Winchester',14),
('Jodie Whittaker',38);

-- INSERT SPECIES
INSERT INTO species 
(name)
VALUES
('Pokemon'),
('Digimon');