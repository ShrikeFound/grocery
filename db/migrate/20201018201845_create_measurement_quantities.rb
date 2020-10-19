class CreateMeasurementQuantities < ActiveRecord::Migration[6.0]
  def change
    create_table :measurement_quantities do |t|
      t.decimal :amount
      t.timestamps
    end
  end
end
