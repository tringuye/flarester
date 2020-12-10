# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserEvent.delete_all
Event.delete_all
User.delete_all
Location.delete_all
City.delete_all
  denver = City.create(name: "Denver", state: "CO")
  seattle = City.create(name: "Seattle", state: "WA")
  san_francisco = City.create(name: "San Francisco", state: "CA")

Category.delete_all
  movies = Category.create(name: "Movies" )
  museums = Category.create(name: "Museums" )
  food_drink = Category.create(name: "Food & Drink" )
  music = Category.create(name: "Music")
  exercise = Category.create(name: "Exercise")
  sports = Category.create(name: "Sports")
  misc = Category.create(name: "Miscellaneous")

  Location.create(name: "Washington Park", city: denver, category: exercise )
  Location.create(name: "City Park", city: denver, category: music )
  Location.create(name: "Cheesman Park", city: denver, category: sports )
  Location.create(name: "Denver Museum of Nature & Science", city: denver, category: museums )
  Location.create(name: "Denver Art Museum", city: denver, category: museums )
  Location.create(name: "Clyfford Still Museum", city: denver, category: museums )
  Location.create(name: "The Ogden Theatre", city: denver, category: music )
  Location.create(name: "The Bluebird Theater", city: denver, category: music )
  Location.create(name: "Cervantes' Masterpiece Ballroom", city: denver, category: music )
  Location.create(name: "See notes for location", city: denver, category: misc )

  Location.create(name: "Golden Gate Park", city: san_francisco, category: exercise )
  Location.create(name: "Glen Canyon Park", city: san_francisco, category: music )
  Location.create(name: "Dolores Park", city: san_francisco, category: sports )
  Location.create(name: "Exploratorium", city: san_francisco, category: museums )
  Location.create(name: "Museum of Modern Art (SFMOMA)", city: san_francisco, category: museums )
  Location.create(name: "Yerba Buena Center for the Arts", city: san_francisco, category: museums )
  Location.create(name: "Bottom of the Hill", city: san_francisco, category: music )
  Location.create(name: "The Fillmore", city: san_francisco, category: music )
  Location.create(name: "Slim's", city: san_francisco, category: music )
  Location.create(name: "See notes for location", city: san_francisco, category: misc )

  Location.create(name: "Discovery Park", city: seattle, category: exercise )
  Location.create(name: "Olympic Sculpture Park", city: seattle, category: music )
  Location.create(name: "Kerry Park", city: seattle, category: sports )
  Location.create(name: "Pacific Science Center", city: seattle, category: museums )
  Location.create(name: "Seattle Art Museum", city: seattle, category: museums )
  Location.create(name: "Seattle Aquarium / Woodland Park Zoo", city: seattle, category: museums )
  Location.create(name: "Tractor Tavern", city: seattle, category: music )
  Location.create(name: "Columbia City Theatre", city: seattle, category: music )
  Location.create(name: "Neumos", city: seattle, category: music )
  Location.create(name: "See notes for location", city: seattle, category: misc )

TimeInterval.delete_all
  TimeInterval.create(interval: 15)
  TimeInterval.create(interval: 30)
  TimeInterval.create(interval: 45)
  TimeInterval.create(interval: 60)
  TimeInterval.create(interval: 75)
  TimeInterval.create(interval: 90)
  TimeInterval.create(interval: 105)
  TimeInterval.create(interval: 120)
