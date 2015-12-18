class Recipe
  include Mongoid::Document
  belongs_to :user

  field :name, type: String
  field :url, type: String
  field :category, type: String

  validates_presence_of :name, :url, :category
end
