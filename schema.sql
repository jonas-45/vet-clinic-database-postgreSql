/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(100), 
  date_of_birth date, 
  escape_attempts int, 
  neutered boolean, 
  weight_kg decimal(6,2)
);


/*Project day 3 */
CREATE TABLE owners (
	id SERIAL PRIMARY KEY,
	full_name VARCHAR(50),
	age int
)

CREATE TABLE species (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
)

ALTER TABLE animals 
	DROP COLUMN species,
	ADD COLUMN species_id int,
	Add COLUMN owner_id int,
	ADD FOREIGN KEY (species_id) REFERENCES species (id),
	ADD FOREIGN KEY (owner_id) REFERENCES owners (id);

  CREATE TABLE vets(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50), 
    age int, 
    date_of_graduation date
  )

CREATE TABLE specializations(id SERIAL PRIMARY KEY, vet_id int, species_id int);

CREATE TABLE visits (id SERIAL PRIMARY KEY, animal_id int, vet_id int, date_of_visit date);

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);