# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create({name: "Shake Shack", user_id:4})

User.create({username: "Felix1234", name: "Felix", password:"1234", account_type:"customer"})
User.create({username: "Ramen", name:"Sharon", password:"abcd", account_type:"customer"})
User.create({username: "Paresh29", name:"Paresh", password:"1234",account_type:"customer"})
User.create({username: "soulmecca", name:"Danny", password:"asdf",account_type:"admin"})

Order.create({restaurant_id: 1, user_id: 1, order: "ShackBurger", visit_id:1})
Order.create({restaurant_id: 1, user_id: 2, order: "Shack Stack", visit_id:2})
Order.create({restaurant_id: 1, user_id: 1, order: "SmokeShack", visit_id:3})

MenuItem.create({name: "ShackBurger", price: 5.19, restaurant_id: 1})
MenuItem.create({name: "Shack Stack", price: 9.49, restaurant_id: 1})
MenuItem.create({name: "SmokeShack", price: 5.19, restaurant_id: 1})
MenuItem.create({name: "Shroom Burger", price: 6.99, restaurant_id: 1})
MenuItem.create({name: "Hamburger", price: 4.19, restaurant_id: 1})
MenuItem.create({name: "Frozen Custard", price: 5.25, restaurant_id: 1})
MenuItem.create({name: "Shake of the Week", price: 5.50, restaurant_id: 1})
MenuItem.create({name: "Floats", price: 5.25, restaurant_id: 1})

Visit.create({user_id:1, restaurant_id:1})
Visit.create({user_id:2, restaurant_id:1})
Visit.create({user_id:3, restaurant_id:1})

Temp.create({user_id:1, restaurant_id:1})
Temp.create({user_id:2, restaurant_id:1})
Temp.create({user_id:3, restaurant_id:1})




