class UserMailer < ApplicationMailer

	def buy_email(user, products)
    @user = user
    @products = products

    mail(
    	delivery_method_options: { api_key: '2f48b7b5331c5aaae12ea4e8b073c22f', secret_key: 'f20ab8630b031fc7fbd7ea6b64fc93e1', port: '25' },
    	from: "edouard.dumuguet@gmx.fr",
    	to: @user.email,
    	subject: 'Détails de votre commande')
  end
end
