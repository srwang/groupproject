# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create({name: "Shake Shack"})

User.create({username: "Felix1234", name: "Felix", password:"1234", type:"customer"})
User.create({username: "Ramen", name:"Sharon", password:"abcd", type:"customer"})
User.create({username: "Paresh29", name:"Paresh", type:"customer"})
User.create({username: "soulmecca", name:"Danny", type:"admin"})

Order.create({restaurant_id: 1, user_id: 1, order: ""})


Sharon

Justin

Paresh




