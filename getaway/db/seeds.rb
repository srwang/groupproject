# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create({name: "Shake Shack", menu: "ShackBurger, Shack Stack, SmokeShack"})

User.create({username: "Felix1234", name: "Felix", password:"1234", account_type:"customer"})
User.create({username: "Ramen", name:"Sharon", password:"abcd", account_type:"customer"})
User.create({username: "Paresh29", name:"Paresh", password:"1234",account_type:"customer"})
User.create({username: "soulmecca", name:"Danny", password:"asdf",account_type:"admin"})
User.create({username: "anotherperson", name:"Sharon", password:"secrete", account_type: "customer"})

Order.create({restaurant_id: 1, user_id: 1, order: "ShackBurger"})
Order.create({restaurant_id: 1, user_id: 2, order: "Shack Stack"})
Order.create({restaurant_id: 1, user_id: 1, order: "SmokeShack"})

Visit.create({user_id:1, restaurant_id:1})
Visit.create({user_id:2, restaurant_id:1})
Visit.create({user_id:3, restaurant_id:1})


