class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.timestamps
    end
  end
end
