# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "kostas-s", email: "kostas@mail.com", password: "test1234")
u2 = User.create(username: "maria", email: "mar96@mail.com", password: "test1234")
u3 = User.create(username: "Xx_thisGuy_xX", email: "guy@mail.com", password: "test1234")
u4 = User.create(username: "HeySiri22", email: "siri@mail.com", password: "test1234")
u1.posts.create(body: "Hello everyone! Enjoy this new platform!!")
u1.posts.create(body: "Post as much as you like, it's free ;)")
u2.posts.create(body: "Oh i love the weather today... Rainy and gloomy <3")
u1.posts.create(body: "Joking? I hate this weather...")
u3.posts.create(body: "NEW LAPTOP DAYYYYY!!!")
u4.posts.create(body: "i need some time off")
u1.posts.create(body: "I think everyone does...")
u3.posts.create(body: "Lockdown is HARD DOODZ...")