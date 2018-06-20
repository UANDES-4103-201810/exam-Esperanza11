class Ingredient < ApplicationRecord
  has_many :ingredient_in_recipes
  has_many :recipes, through: :ingredient_in_recipes
end
