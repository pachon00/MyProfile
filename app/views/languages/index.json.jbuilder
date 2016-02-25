json.array!(@languages) do |language|
  json.extract! language, :id, :name, :porcent
  json.url language_url(language, format: :json)
end
