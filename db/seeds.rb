# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firs
User.create(email:"jean.bernard@gmail.com", username:"jeanbernard", password:"jeanbernard", password_confirmation:"jeanbernard")
User.create(email:"alfred.duverger@gmail.com", username:"alfred", password:"alfredduverger", password_confirmation:"alfredduverger")
User.create(email:"xavier.leboucher@gmail.com", username:"xavier", password:"xavierleboucher", password_confirmation:"xavierleboucher")
User.create(email:"edouard.lachaise@gmail.com", username:"edouard", password:"edouardlachaise", password_confirmation:"edouardlachaise")
