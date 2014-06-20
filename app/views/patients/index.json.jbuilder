json.array!(@patients) do |patient|
  json.extract! patient, :id, :encounter_type, :encountered_on, :user
  json.url patient_url(patient, format: :json)
end
