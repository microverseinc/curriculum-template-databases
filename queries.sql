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



