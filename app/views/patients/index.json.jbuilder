json.array!(@patients) do |patient|
  json.extract! patient, :id, :encounter_type
  json.url patient_url(patient, format: :json)
end
