# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create({name: "Shake Shack"})

User.create({username: "Felix1234", name: "Felix", password:"1234", account_type:"customer"})
User.create({username: "Ramen", name:"Sharon", password:"abcd", account_type:"customer"})
User.create({username: "Paresh29", name:"Paresh", password:"1234",account_type:"customer"})
User.create({username: "soulmecca", name:"Danny", password:"asdf",account_type:"admin"})

Order.create({restaurant_id: 1, user_id: 1, order: "ShackBurger"})
Order.create({restaurant_id: 1, user_id: 2, order: "Shack Stack"})
Order.create({restaurant_id: 1, user_id: 1, order: "SmokeShack"})

Menu_item.create({name: "ShackBurger", price:5.19, restaurant_id: 1})
Menu_item.create({name: "Shack Stack", price:9.49, restaurant_id: 1})
Menu_item.create({name: "SmokeShack", price:5.19, restaurant_id: 1})
Menu_item.create({name: "Shroom Burger", price:6.99, restaurant_id: 1})
Menu_item.create({name: "Hamburger", price:4.19, restaurant_id: 1})
Menu_item.create({name: "Frozen Custard", price:5.25, restaurant_id: 1})
Menu_item.create({name: "Shake of the Week", price:5.50, restaurant_id: 1})
Menu_item.create({name: "Floats", price:5.25, restaurant_id: 1})

Visit.create({user_id:1, restaurant_id:1})
Visit.create({user_id:2, restaurant_id:1})
Visit.create({user_id:3, restaurant_id:1})


