json.array!(@hospitals) do |hospital|
  json.extract! hospital, 
  json.url hospital_url(hospital, format: :json)
end
