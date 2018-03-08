class UserMailer < ApplicationMailer

	def buy_email(user, products)
		Dotenv.load
    	@user = user
    	@products = products
		mail(
    		delivery_method_options: { api_key: ENV['MAILJET_API_KEY'], secret_key: ENV['MAILJET_API_SECRET'], port: '25' },
    		from: "edouard.dumuguet@gmx.fr",
    		to: @user.email,
    		subject: 'Détails de votre commande')
  end
end
