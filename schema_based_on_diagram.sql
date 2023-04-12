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

CREATE TABLE treatments(
  id INT PRIMARY KEY IDENTITY,
  type VARCHAR(10),
  name VARCHAR(120)
)

CREATE TABLE invoices(
  id INT PRIMARY KEY IDENTITY,
  total_amount DECIMAL(6,2),
  generated_at TIMESTAMP WITHOUT TIME ZONE,
  payed_at TIMESTAMP WITHOUT TIME ZONE,
  medical_history_id INT,
  ADD CONSTRAINT fk_medical_history_id FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
)

CREATE TABLE invoice_items(
  id INT PRIMARY KEY IDENTITY,
  unit_price DECIMAL(4,2),
  quantity INT,
  total_price DECIMAL(6,2),
  invoice_id INT,
  treatment_id INT,
  ADD CONSTRAINT fk_invoice_id FOREIGN KEY (invoice_id) REFERENCES invoices(id),
  ADD CONSTRAINT fk_treatment_id FOREIGN KEY (treatment_id) REFERENCES treatments(id)
)

CREATE TABLE history_treatments_join(
  id INT PRIMARY KEY IDENTITY,
  medical_history_id INT,
  treatments_id INT,
  ADD FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id),
  ADD FOREIGN KEY (treatments_id) REFERENCES treatments(id)
)
