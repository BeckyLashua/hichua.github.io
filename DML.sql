-- get a single pet's data for the Update Pet's form
SELECT petID, pet_name, ownerID, pet_typeID, breed, birthdate 
FROM Pets WHERE petID = :petID_selected_from_browse_pet_page

-- get a single pet's data for the Update Veterinarian's form
SELECT vetID, vet_name
FROM Veterinarians WHERE vetID = :vetID_selected_from_browse_pet_type_page

-- get a single pet type's data for the Update Pet Type's form
SELECT pet_typeID, type_name
FROM Pet_Types WHERE ownerID = :pet_typeID_selected_from_browse_pet_type_page

-- get a single owner's data for the Update Owner's form
SELECT ownerID, owner_name, email
FROM Owners WHERE ownerID = :ownerID_selected_from_browse_owners_page

-- get a single pet type's data for the Update Pet Type's form
SELECT exam_roomID
FROM Exam_Rooms WHERE exam_roomID = :exam_roomID_selected_from_browse_exam_room_page

-- Add a new pet
INSERT INTO Pets(pet_name, ownerID, pet_typeID, breed, birthdate)
VALUES (:pet_name, :ownerID, :pet_typeID, :breed, :birthdate)

-- Add a new pet type
INSERT INTO Pet_Types(type_name)
VALUES (:type_name)

-- Add a new veterinarian
INSERT INTO Veterinarians(vet_name)
VALUES (:vet_name)

-- Add a new procedure
INSERT INTO Procedures(proc_name, cost)
VALUES (:proc_name, :cost)

-- Add a new exam room
INSERT INTO Exam_Rooms(exam_roomID)
VALUES (:exam_roomID)

-- Add a new owner
INSERT INTO Owners(owner_name, email)
VALUES (:owner_name, :email)

-- Add a new appointment 
INSERT INTO Appointments(petID, exam_roomID, appointment_date)
VALUES (:petID, :exam_roomID, :appointment_date)



INSERT INTO Appointment_has_Procedure(appointmentID, procedureID)
VALUES (:appoitnmentID, :procedureID)


INSERT INTO Procedure_has_Vet(procedureID, vetID)
VALUES (:procedureID, :vetID)


-- Delete appt
DELETE FROM Appointments WHERE id = :appoitnmentID_selected_from_browse_appointments_page

-- Delete pet
DELETE FROM Pets WHERE id = :petID_selected_from_browse_pets_page

-- Delete Veterinarian 
DELETE FROM Veterinarian WHERE id = :vetID_selected_from_browse_vets_page

-- Delete Pet Types
DELETE FROM Pet_Types WHERE id = :pet_typeID_selected_from_browse_pet_types_page

-- Delete Procedures
DELETE FROM Procedures WHERE id = :procedureID_selected_from_browse_procedures_page

-- Delete Exam Rooms
DELETE FROM Exam_Rooms WHERE id = :exam_roomID_selected_from_browse_exam_rooms_page

-- Delete Owners
DELETE FROM Owners WHERE id = :ownerID_selected_from_browse_owners_page

