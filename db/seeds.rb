# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ['Furniture', 'Automobile', 'Creepy Encounters']
categories.each do |cat|
  Category.create(title: cat)
end

# furniture = ['bed', 'sofa', 'table']
# autos = ['ferrari', 'aston martin', 'vauxhaul']
# creepy = ['booger picking', 'socks with sandals', 'full body latex suit fetish']
# adjectives = ['amazing', 'great', 'tired']
# locations = ['LA', 'SF', 'SLO']

# furniture.each do |unit|
#   Post.create(category_id: 1, title: unit, body: adjectives.sample, location: locations.sample )
# end

# autos.each do |unit|
#   Post.create(category_id: 2, title: unit, body: adjectives.sample, location: locations.sample )
# end

# creepy.each do |unit|
#   Post.create(category_id: 3, title: unit, body: adjectives.sample, location: locations.sample )
# end


