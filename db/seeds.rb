# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bike.destroy_all
CustomizationCategory.destroy_all
CustomizationOption.destroy_all

puts "Creating bikes"

bike_1 = Bike.create(name: "Specialized")
bike_2 = Bike.create(name: "Trek")
bike_3 = Bike.create(name: "Orbea")
bike_4 = Bike.create(name: "Rockrider")
bike_5 = Bike.create(name: "Giant")

puts "Creating customization_categories"

cat_1 = CustomizationCategory.create(bike_element: "Wheel size", bike: bike_1 )
cat_2 = CustomizationCategory.create(bike_element: "Rim color", bike:  bike_1)
cat_3 = CustomizationCategory.create(bike_element: "Saddle color", bike: bike_1 )


