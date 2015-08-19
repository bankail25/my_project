json.array!(@categories) do |category|
  json.extract! category, :id, :name, :keywords, :description, :subject, :lenguaje
  json.url category_url(category, format: :json)
end
