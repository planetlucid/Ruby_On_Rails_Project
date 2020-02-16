# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

superman = Hero.find_or_create_by(name: 'Superman')
drmanhattan = Hero.find_or_create_by(name: 'Dr. Manhattan')

Team.find_or_create_by(name: "The Watchmen", hero: drmanhattan)
Team.find_or_create_by(name: "Doomnday Clock", hero: drmanhattan)

drmanhattan.team.find_or_create_by(name:"Team 1")
drmanhattan.team.find_or_create_by(name:"Team 2")
drmanhattan.team.find_or_create_by(name:"Team 3")