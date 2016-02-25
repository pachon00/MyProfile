json.array!(@works) do |work|
  json.extract! work, :id, :company, :roles, :start_date, :end_date, :tasks
  json.url work_url(work, format: :json)
end
