# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Business.create(full_name: "KLCC Mall", categories: "shopping", description: "A really good mall", address: "50, Changkat Bukit Bintang\n50200 Kuala Lumpur\nMalaysia")
Business.create(full_name: "Midvalley", categories: "shopping", description: "A  good mall", address: "20, Changkat Bukit Bintang\n50200 Kuala Lumpur\nMalaysia")
Business.create(full_name: "Citta Mall", categories: "shopping", description: "An ok mall", address: "30, Changkat Bukit Bintang\n50200 Kuala Lumpur\nMalaysia")
Business.create(full_name: "Lim Repair", categories: "repair_services", description: "repair roof", address: "40, Changkat Bukit Bintang\n50200 Kuala Lumpur\nMalaysia")
Business.create(full_name: "Lam Repair", categories: "repair_services", description: "repair piping", address: "10, Changkat Bukit Bintang\n50200 Kuala Lumpur\nMalaysia")
Business.create(full_name: "Mcdonalds", categories: "food_and_beverages", description: "burger restaurant", address: "1000, Changkat Bukit Bintang\n50200 Kuala Lumpur\nMalaysia")
Business.create(full_name: "Smart Photocopy", categories: "business_services", description: "a printing services", address: "90, Changkat Bukit Bintang\n50200 Kuala Lumpur\nMalaysia")

Review.create(content: "It's a brand new shopping by Sunway, some shops are still on hold but 95% are working already. Very big with a circular oval ring and several floors, you can find pretty much anything and it's not to far from the center. I still prefer other Mall though.",
              rating: 4, user_id: 1, business_id: 1)
Review.create(content: "It's a brand new shopping by Sunway, some shops are still on hold but 95% are working already. Very big with a circular oval ring and several floors, you can find pretty much anything and it's not to far from the center. I still prefer other Mall though.",
              rating: 3, user_id: 2, business_id: 1)
Review.create(content: "It's a brand new shopping by Sunway, some shops are still on hold but 95% are working already. Very big with a circular oval ring and several floors, you can find pretty much anything and it's not to far from the center. I still prefer other Mall though.",
              rating: 5, user_id: 1, business_id: 1)
