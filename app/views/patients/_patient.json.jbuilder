json.extract! patient, :id, :mrn, :first_name, :middle_name, :last_name, :weight, :height, :created_at, :updated_at
json.url patient_url(patient, format: :json)