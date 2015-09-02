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

MenuItem.create({name: "ShackBurger", price: 5.19, restaurant_id: 1})
MenuItem.create({name: "ShackStack", price: 9.49, restaurant_id: 1})
MenuItem.create({name: "SmokeShack", price: 5.19, restaurant_id: 1})
MenuItem.create({name: "ShroomBurger", price: 6.99, restaurant_id: 1})
MenuItem.create({name: "Hamburger", price: 4.19, restaurant_id: 1})
MenuItem.create({name: "FrozenCustard", price: 5.25, restaurant_id: 1})
MenuItem.create({name: "ShakeoftheWeek", price: 5.50, restaurant_id: 1})
MenuItem.create({name: "Floats", price: 5.25, restaurant_id: 1})

# Visit.create({user_id:1, restaurant_id:1, menu: "ShackBurger"})
# Visit.create({user_id:2, restaurant_id:1, menu: "ShackStack"})
# Visit.create({user_id:3, restaurant_id:1, menu: "SmokeShack"})

# Temp.create({user_id:1, restaurant_id:1, menu: "ShackBurger"})
# Temp.create({user_id:2, restaurant_id:1, menu: "ShackStack"})
# Temp.create({user_id:3, restaurant_id:1, menu: "SmokeShack"})



