class Recipe < ApplicationRecord
  has_many :ingredient_in_recipes
  has_many :ingredients, through: :ingredient_in_recipes
end
