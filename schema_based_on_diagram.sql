CREATE DATABASE clinic;

CREATE TABLE patients(
  id INT PRIMARY KEY IDENTITY,
  name VARCHAR(120),
  date_of_birth DATE
)

CREATE TABLE medical_histories(
  id INT PRIMARY KEY IDENTITY,
  admitted_at TIMESTAMP WITHOUT TIME ZONE,
  patient_id INT,
  status VARCHAR(10),
  Add CONSTRAINT fk_patient_id FOREIGN KEY (patient_id) REFERENCES patients(id)
)

