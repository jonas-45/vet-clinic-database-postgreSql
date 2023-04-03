/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(100), 
  date_of_birth date, 
  escape_attempts int, 
  neutered boolean, 
  weight_kg decimal(6,2)
);
