# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


##create measurement units

measurement_units = [
  "teaspoon",
  "tablespoon",
  "fluid ounce",
  "cup",
  "pint",
  "quart",
  "gallon",
  "milliliter",
  "liter",
  "deciliter",
  "pound",
  "ounce",
  "milligram",
  "gram",
  "kilogram",
]

measurement_units.each do |m|
  MeasurementUnit.create(name: m)
end

measurement_quantities = [
  0.125,0.25,0.5,0.75,1,
  1.125,1.25,1.5,1.75,2,
  2.125,2.25,2.5,2.75,3,
  3.125,3.25,3.5,3.75,4,
  4.125,4.25,4.5,4.75,5,

]
measurement_quantities.each do |q|
  MeasurementQuantity.create(amount: q)
end
