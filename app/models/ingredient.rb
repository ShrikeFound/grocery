class Ingredient < ApplicationRecord
  has_many :recipe_ingredients



  def pretty_price 
    price.to_f/100
  end


end
