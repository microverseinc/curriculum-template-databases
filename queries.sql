/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';
SELECT name from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name from animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth from animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered = true;
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT savepoint_name;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO savepoint_name;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, COUNT(*) FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

SELECT * FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT * FROM animals JOIN species ON animals.specie_id = species.id WHERE species.name = 'Pokemon';
SELECT * FROM owners LEFT JOIN animals ON owners.id = animals.owner_id;
SELECT species.name, COUNT(*) FROM animals JOIN species ON animals.specie_id = species.id GROUP BY species.name;
SELECT * FROM animals JOIN owners ON animals.owner_id = owners.id JOIN species ON animals.specie_id = species.id WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';
SELECT * FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;
SELECT owners.full_name, COUNT(*) FROM animals JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY COUNT(*) DESC LIMIT 1;

SELECT * FROM animals JOIN visits ON animals.id = visits.animal_id JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'William Tatcher' ORDER BY visits.date_of_visit DESC LIMIT 1;
SELECT COUNT(DISTINCT animals.name) FROM animals JOIN visits ON animals.id = visits.animal_id JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Stephanie Mendez';
SELECT vets.name, species.name FROM vets JOIN specializations ON vets.id = specializations.vet_id JOIN species ON specializations.specie_id = species.id;
SELECT * FROM animals JOIN visits ON animals.id = visits.animal_id JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Stephanie Mendez' AND visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';
SELECT animals.name, COUNT(*) FROM animals JOIN visits ON animals.id = visits.animal_id GROUP BY animals.name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT * FROM visits JOIN animals ON visits.animal_id = animals.id JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Maisy Smith' ORDER BY visits.date_of_visit LIMIT 1;
SELECT animals.name, vets.name, visits.date_of_visit FROM visits JOIN animals ON visits.animal_id = animals.id JOIN vets ON visits.vet_id = vets.id ORDER BY visits.date_of_visit DESC LIMIT 1;
SELECT COUNT(*) FROM visits JOIN animals ON visits.animal_id = animals.id JOIN vets ON visits.vet_id = vets.id JOIN specializations ON vets.id = specializations.vet_id JOIN species ON animals.specie_id = species.id WHERE specializations.specie_id != species.id;
SELECT species.name, COUNT(*) FROM visits JOIN animals ON visits.animal_id = animals.id JOIN vets ON visits.vet_id = vets.id JOIN specializations ON vets.id = specializations.vet_id JOIN species ON animals.specie_id = species.id GROUP BY species.name ORDER BY COUNT(*) DESC LIMIT 1;
