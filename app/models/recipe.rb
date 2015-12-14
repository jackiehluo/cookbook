class Recipe
  include Mongoid::Document
  field :name, type: String
  field :url, type: String
  field :category, type: String
end
