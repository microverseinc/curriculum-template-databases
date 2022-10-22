/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals where name like '%mon' ;
SELECT name from animals where EXTRACT(YEAR FROM date_of_birth) between 2016 AND 2019;
SELECT name from animals where neutered='true' AND escape_attempts>'3'; 
SELECT date_of_birth from animals where name='Agumon' OR name='pikachu';
SELECT name,escape_attempts from animals where weight_kg>'10.5';
SELECT * from animals where neutered='true';
SELECT * from animals where NOT name='Gabumon';
SELECT * from animals where weight_kg between 10.4 AND 17.3;


begin;
update animals set species='unspecified';
rollback;


begin;
update animals set species='digimon' where name like '%mon';
update animals set species='Pokimon' where NOT name like '%mon';
commit;
rollback;


begin;
DELETE FROM animals;
rollback;


begin;

DELETE from animals where date_of_birth>='2022-01-01';
select * from animals;
savepoint one;
UPDATE animals set weight_kg = weight_kg * -1;
select * from animals;
rollback to one;
UPDATE animals set weight_kg = weight_kg * -1 where weight_kg < 0;
select * from animals;

commit;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals where escape_attempts=0;
SELECT AVG(weight_kg) FROM animals;
SELECT name, max(escape_attempts) from animals where neutered = true or neutered = false group by name ORDER by max(escape_attempts) desc;
select max(weight_kg),min(weight_kg) from animals group by species;
select avg(escape_attempts) from animals WHERE EXTRACT(year from date_of_birth) between 1990 AND 2000;

-- JOIN QUERIES
-- What animals belong to Melody Pond?
SELECT 
an.name AS animal_name,
ow.full_name AS owner_name 
FROM animals an 
INNER JOIN owners ow
ON ow.id = an.owners_id 
WHERE ow.full_name = 'Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon).
SELECT 
an.name AS animal_name, 
sp.name AS species 
FROM animals an 
INNER JOIN species sp
ON sp.id = an.species_id
WHERE sp.name = 'Pokemon';

-- List all owners and their animals, remember to include those that don't own any animal.
SELECT
ow.full_name as owner_name,
an.name as animal_name
FROM owners ow
LEFT JOIN animals an
ON ow.id = an.owners_id

-- How many animals are there per species?
SELECT 
sp.name AS species_name,
COUNT(an.name) AS animal_count
FROM animals an 
INNER JOIN species sp
ON sp.id = an.species_id
GROUP BY sp.name;

-- List all Digimon owned by Jennifer Orwell.
SELECT 
ow.full_name as owner_name,
sp.name as species_name,
an.name as animal_name
FROM animals an 
INNER JOIN owners ow
ON ow.id = an.owners_id
INNER JOIN species sp
ON sp.id = an.owners_id
WHERE ow.full_name = 'Jennifer Orwell';

-- List all animals owned by Dean Winchester that haven't tried to escape.
SELECT 
ow.full_name as owner_name,
an.name as animal_name,
an.escape_attempts as check_attempts
FROM animals an 
INNER JOIN owners ow
ON ow.id = an.owners_id
WHERE an.escape_attempts = 0 
AND ow.full_name = 'Dean Winchester';

-- Who owns the most animals?
SELECT 
COUNT(an.name) AS animal_count,
ow.full_name AS owner_name 
FROM animals an 
INNER JOIN owners ow
ON ow.id = an.owners_id 
GROUP BY ow.full_name 
ORDER BY MAX(an.name) DESC;

