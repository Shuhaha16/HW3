# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

places = Place.destroy_all
#Comment out if you don't want to restart post database each time

places = Place.create([{ name: "Norway"}, {name: "Portugal"}, {name: "Hyde Park" }])
#Initial seed of model
posts = Post.create([
    {title: "The beginning", description: "It was a dark and story night...", posted_on: 02/21/22, place_id = "14" },
    {title: "The Middle", description: "a Twosday.", posted_on: 02/22/22, place_id = "14" },
    {title: "The End", description: "and finally wednesday.", posted_on: 02/23/22, place_id = "14" }
])
  #connect place id to location? id might change with db:seed command

# t.string :title
# t.text :description
# t.date :posted_on
# t.integer :place_id