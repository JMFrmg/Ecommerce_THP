class UserMailer < ApplicationMailer

	def buy_email(user, products)
    @user = user
    @products = products

    mail(
    	delivery_method_options: { api_key: '', secret_key: '', port: '25' },
    	from: "edouard.dumuguet@gmx.fr",
    	to: @user.email,
    	subject: 'Détails de votre commande')
  end
end
