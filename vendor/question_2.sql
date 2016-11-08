select * from patients where last_name ilike '%mit%';

select distinct(patients.*) from encounters, patients where patient_id=patients.id and discharged_at notnull;

select distinct(patients.*) from encounters, patients where patient_id=patients.id and admitted_at > '2014-07-05' and discharged_at < '2014-08-19';