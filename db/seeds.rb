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
Product.create(title:"Chat obese siamois", description: "Chat obese de premiere classe", price: 5.99, image_url: "http://www.googleimages/image1.png")
Product.create(title:"Chat obese maine coon", description: "Chat obese de premiere main", price: 10, image_url: "http://www.googleimages/image2.png")
Product.create(title:"Chat obese egyptien", description: "Chat obese de premiere instance", price: 12.99, image_url: "http://www.googleimages/image3.png")
Product.create(title:"Chat obese bleu", description: "Chat obese avocat", price: 12.99, image_url: "http://www.googleimages/image4.png")
