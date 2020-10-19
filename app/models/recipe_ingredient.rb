class RecipeIngredient < ApplicationRecord
  belongs_to :Ingredient
  belongs_to :Recipe
  belongs_to :MeasurementQuantity
  belongs_to :MeasurementUnit
end
