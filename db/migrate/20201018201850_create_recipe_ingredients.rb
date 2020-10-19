class CreateRecipeIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.references :measurement_unit, foreign_key: true
      t.references :measurement_quantity, foreign_key: true
      t.timestamps
    end
  end
end
