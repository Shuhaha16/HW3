# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#TODO
#-syntax of initial post creation
#-how to reset place id upon destroy all
#-what is t.date syntax (ex/ "02/02/2022"?)

places = Place.destroy_all
#Comment out if you don't want to restart post database each time

places = Place.create([{ name: "Norway"}, {name: "Portugal"}, {name: "Hyde Park" }])

#Initial seed of model
# posts = Post.create([
#     {title: "The beginning", description: "It was a dark and story night", posted_on: "02/21/22" , place_id: places[0].id }
#     # {title: "The Middle", description: "a Twosday.", posted_on: 02/22/22 , place_id:  1 },
#     # {title: "The End", description: "and finally wednesday.", posted_on:  02/23/22 , place_id = 1} 
# ])
  #connect place id to location? id might change with db:seed command


# t.string :title
# t.text :description
# t.date :posted_on
# t.integer :place_id