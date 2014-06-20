json.array!(@patients) do |patient|
  json.extract! patient, :id, :type
  json.url patient_url(patient, format: :json)
end
