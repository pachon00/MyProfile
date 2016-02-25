json.array!(@resourses) do |resourse|
  json.extract! resourse, :id, :type, :name, :email, :website
  json.url resourse_url(resourse, format: :json)
end
