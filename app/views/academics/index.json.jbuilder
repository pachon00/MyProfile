json.array!(@academics) do |academic|
  json.extract! academic, :id, :name, :location, :start_date, :end_date, :grade
  json.url academic_url(academic, format: :json)
end
