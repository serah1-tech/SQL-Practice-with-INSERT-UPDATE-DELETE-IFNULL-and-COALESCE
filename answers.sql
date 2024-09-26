USE hospital_db;
-- Part 1: INSERT Data
-- 1.1) Add a new patient John Doe
INSERT INTO patients (first_name, second_name, date_of_birth, gender, language)
VALUES ('John', 'Doe', '1980-11-15', 'Male', 'English');

-- Part 2: UPDATE Data
-- 2.1) Change John Doe's language to Spanish
UPDATE patients
SET language = 'Spanish'
WHERE first_name = 'John' AND second_name = 'Doe';

-- Part 3: DELETE Data
-- 3.1) Delete patient with patient_id 10
DELETE FROM patients
WHERE patient_id = 10;

-- Part 4: Handling NULL Values
-- 4.1) Find provider names and emails, replacing NULL emails with 'N/A'
SELECT provider_name, IFNULL(email, 'N/A') AS email
FROM providers;

-- Part 4: Handling NULL Values
-- 4.2) Find provider names and contact details, replacing missing ones with 'Missing details'
SELECT provider_name, 
       IFNULL(phone_number, 'Missing details') AS phone_number,
       IFNULL(email, 'Missing details') AS email
FROM providers;

-- Bonus Question
-- Retrieve providers whose specialty is pediatrics and who are missing either phone or email
SELECT provider_name, phone_number, email
FROM providers
WHERE specialty = 'Pediatrics'
  AND (phone_number IS NULL OR email IS NULL);

