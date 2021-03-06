# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting users and events...."
Event.destroy_all
User.destroy_all
puts "looking for users events..."


event1 = Event.create!(
  title: "English and Japanese",
  address: "Shinjuku, Tokyo, Japan",
  date: 3,
  start_time: 10,
  end_time: 00,
  # price: 1000,
  detail: "Create new foreign frends and talk with English!"
  # capacity: 50
  )
event2 = Event.create!(
  title: "Comic festival",
  address: "Shinjuku, Tokyo, Japan",
  date: 12,
  start_time: 9,
  end_time: 05,
  # price: 1000,
  detail: "Let's join and find nice mangas."
  # capacity: 500
  )
event3 = Event.create!(
  title: "Coffee and talking",
  address: "Shinjuku, Tokyo, Japan",
  date: 5,
  start_time: 16,
  end_time: 10,
  # price: 0,
  detail: "Lot's of coffee in here!"
  # capacity: 20
  )

ryo = User.create!(
  name: "Ryosuke",
  email: "ryo@email.com",
  password: "123456"
  )

Joining.create!(
  event: event1,
  user: ryo,
  event_date: 6,
  member: 3,
  status: "Joining"
  )
