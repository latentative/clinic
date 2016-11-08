# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Encounter.destroy_all
Patient.destroy_all

patient_list = [
    {mrn: "THC123", first_name: "James", middle_name: "John", last_name: "Smith", weight: 85, height: 180},
    {mrn: "THC124", first_name: "Sandy", middle_name: "Aria", last_name: "Mits", weight: 55, height: 145},
    {mrn: "THC125", first_name: "Bently", middle_name: "Frank", last_name: "Lee", weight: 90, height: 178},
    {mrn: "THC126", first_name: "Harry", middle_name: "Benson", last_name: "Banner", weight: 25, height: 120},
]
patient_list.each do |patient|
  Patient.create(patient)
end

encounter_list = [
    {visit_number: "VN0001", admitted_at: Time.zone.local(2014,9,22,4), discharged_at: Time.zone.local(2014,9,24,14), location: "Fifth Ward", room: 189, bed: 3, patient_id: Patient.find_by_mrn("THC123").id},
    {visit_number: "VN0002", admitted_at: Time.zone.local(2014,7,2,11,30,34), discharged_at: Time.zone.local(2014,7,8,16,34), location: "ICU", room: 133, bed: 2, patient_id: Patient.find_by_mrn("THC123").id},
    {visit_number: "VN0003", admitted_at: Time.zone.local(2015,3,22,6), location: "ER", room: 3, bed: 5, patient_id: Patient.find_by_mrn("THC123").id},
    {visit_number: "VN0004", admitted_at: Time.zone.local(2014,8,1,18,24,22), discharged_at: Time.zone.local(2014,8,12,10,25), location: "Fourth Ward", room: 2323, bed: 3, patient_id: Patient.find_by_mrn("THC124").id},
    {visit_number: "VN0005", admitted_at: Time.zone.local(2014,7,23,13,34), discharged_at: Time.zone.local(2014,7,29,14,22), location: "Third Ward", room: 382, bed: 1, patient_id: Patient.find_by_mrn("THC125").id},
    {visit_number: "VN0006", admitted_at: Time.zone.local(2014,8,19,1), discharged_at: Time.zone.local(2014,8,23,8,30), location: "Second Ward", room: 2329, bed: 2, patient_id: Patient.find_by_mrn("THC125").id},
    {visit_number: "VN0007", admitted_at: Time.zone.local(2014,2,19,12,23,45), location: "ICU", room: 2, bed: 6, patient_id: Patient.find_by_mrn("THC124").id},
    {visit_number: "VN0008", admitted_at: Time.zone.local(2014,7,4,23,59), patient_id: Patient.find_by_mrn("THC126").id}
]

encounter_list.each do |encounter|
  Encounter.create(encounter)
end