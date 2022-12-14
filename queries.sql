/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = '%mon';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT * FROM animals WHERE neutered='True' AND escape_attempts<3; 
SELECT date_of_birth FROM animals WHERE name IN ('Agumon','Pikachu'); 
SELECT name, escape_attempts FROM animals WHERE weight_kg>10.5;
SELECT * FROM animals WHERE neutered='True'; 
SELECT * FROM animals WHERE name NOT IN ('Gabumon');
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

/* Day 2 */

/* Transaction 1 */

BEGIN;

UPDATE animals SET species='unspecified';

SELECT species FROM animals;
ROLLBACK;

SELECT species FROM animals;

UPDATE animals SET species='digimon' WHERE name LIKE '%mon';
UPDATE animals SET species='pokemon' WHERE species NOT LIKE '%mon';

COMMIT;

SELECT * FROM animals;

/* Transaction 2 */

BEGIN;

DELETE FROM animals;

ROLLBACK;

/* Transaction 3 */

BEGIN;
 
SAVEPOINT SP1;
 
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
 
SAVEPOINT SP2;
 
UPDATE animals SET weight_kg = weight_kg * -1;
 
ROLLBACK TO SP2;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;

SELECT * FROM animals;

/* Answer of the Questions */

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, MAX(escape_attempts) FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg) as Minimum, MAX(weight_kg) as Maximum FROM animals GROUP BY species;
SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;


/* Day3 */ 

SELECT name FROM animals
JOIN owners ON owners.id = animals.owner_id
WHERE owners.full_name = 'Melody Pond';

SELECT animals.name FROM animals
JOIN species ON species.id = animals.species_id
WHERE species.name = 'Pokemon';

SELECT name AS name_of_animals, full_name AS name_of_owners FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id;

SELECT species.name, COUNT(*) FROM animals
LEFT JOIN species ON species.id = animals.species_id
GROUP BY species.name;

SELECT animals.name FROM animals
JOIN species ON species.id = animals.species_id
JOIN owners ON owners.id = animals.owner_id
WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell' ;

SELECT name FROM animals
JOIN owners ON owners.id = animals.owner_id
WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;

SELECT full_name, COUNT(full_name) AS maximum FROM animals
JOIN owners ON owners.id = animals.owner_id
GROUP BY owners.full_name
ORDER BY maximum
DESC LIMIT 1;


/* Day 4 */

SELECT animals.name FROM visits
JOIN animals on animals.id = visits.animals_id
JOIN vets on vets.id = visits.vets_id
WHERE vets.name = 'William Tatcher'
ORDER BY date_of_visit
DESC LIMIT 1;

SELECT vets.name, COUNT(*) FROM visits
JOIN animals on animals.id = visits.animals_id
JOIN vets on vets.id = visits.vets_id
WHERE vets.name = 'Stephanie Mendez'
GROUP BY vets.name;

SELECT vets.name, species.name FROM vets
LEFT JOIN specializations on vets.id = specializations.vets_id
LEFT JOIN species on species.id = specializations.species_id;

SELECT animals.name FROM visits
JOIN vets on vets.id = visits.vets_id
JOIN animals on animals.id = visits.animals_id
WHERE vets.name = 'Stephanie Mendez'
AND date_of_visit BETWEEN '04-01-2020' AND '08-30-2020';

SELECT animals.name, COUNT(*) AS number_of_visits FROM visits
JOIN vets on vets.id = visits.vets_id
JOIN animals on animals.id = visits.animals_id
GROUP BY animals.name
ORDER BY number_of_visits
DESC LIMIT 1;

SELECT animals.name FROM visits
JOIN vets on vets.id = visits.vets_id
JOIN animals on animals.id = visits.animals_id
WHERE vets.name = 'Maisy Smith'
ORDER BY date_of_visit
LIMIT 1;

SELECT animals.name, vets.name, date_of_visit FROM visits
JOIN vets on vets.id = visits.vets_id
JOIN animals on animals.id = visits.animals_id
ORDER BY date_of_visit
DESC LIMIT 1;

SELECT COUNT(*) FROM vets
LEFT JOIN visits on vets.id = visits.vets_id
LEFT JOIN specializations on vets.id = specializations.vets_id
LEFT JOIN species on species.id = specializations.species_id
WHERE species.name is NULL;

SELECT species.name, COUNT(*) FROM visits
JOIN vets on vets.id = visits.vets_id
JOIN animals on animals.id = visits.animals_id
JOIN species on species.id = animals.species_id
WHERE vets.name = 'Maisy Smith'
GROUP BY species.name
LIMIT 1;
