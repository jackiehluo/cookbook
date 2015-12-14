json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :url, :category
  json.url recipe_url(recipe, format: :json)
end
