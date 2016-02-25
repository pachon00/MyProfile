json.array!(@trainings) do |training|
  json.extract! training, :id, :name, :porcent, :start_date, :end_date, :level
  json.url training_url(training, format: :json)
end
