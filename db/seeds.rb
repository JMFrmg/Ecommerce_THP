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

Cart.create(name:"Mon Panier", user_id:1)
Cart.create(name:"Mon Panier", user_id:2)

Order.create(user_id:1)
Order.create(user_id:2)


Product.create(title:"Chat obese siamois", description: "Chat obese de premiere classe", price: 5.99, image_url: "https://static.wamiz.fr/images/articles/facebook/article/chat-obese-fb-59847ee7a33d7.jpg")
Product.create(title:"Chat obese maine coon", description: "Chat obese de premiere main", price: 10.99, image_url: "https://www.humour.com/medias/photos/2015/600x404/l-20151013230909.jpg")
Product.create(title:"Chat obese egyptien", description: "Chat obese de premiere instance", price: 12.99, image_url: "https://img.20mn.fr/OBfnn-9XQvu9j6viooYeKQ/310x190_meow-chat-18-kilos-mort-5-mai")
Product.create(title:"Chat obese bleu", description: "Chat obese avocat", price: 12.99, image_url: "https://www.alternativesante.fr/upload/cache/medias/chat-obese_w837_h553_r4_q90.jpg")
Product.create(title:"Grison", description: "pas content (du tout)", price: 19.99, image_url: "chat/2.jpg")
Product.create(title:"Black ", description: "vous me voyez ... vous ne me voyez plus", price: 29.99, image_url: "chat/4.jpg")
Product.create(title:"Garfield ", description: "Garfield qui reste fidèle a lui-même", price: 49.99, image_url: "chat/5.jpg")
Product.create(title:"Due de chats", description: "c'est tout mimi", price: 45.99, image_url: "chaton/2.jpg")
Product.create(title:"ROAR", description: "C'est qui le papa", price: 159.99, image_url: "bchat/1.jpg")
