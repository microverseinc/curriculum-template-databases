/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals where name like '%mon' ;
SELECT name from animals where EXTRACT(YEAR FROM date_of_birth) between 2016 AND 2019;
SELECT name from animals where neutered='true' AND escape_attempts>='3'; 
SELECT date_of_birth from animals where name='Agumon' OR name='pikachu';
SELECT name,escape_attempts from animals where weight_kg>='10.5';
SELECT * from animals where neutered='true';
SELECT * from animals where NOT name='Gabumon';
SELECT * from animals where weight_kg between 10.4 AND 17.3;
