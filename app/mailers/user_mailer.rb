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

    def emails_to_admins(user, products)
    	Dotenv.load
    	@products = products
    	@user = user
    	@admins = ['piere@live.fr', 'a.lotz@hotmail.fr', 'tina.helfer2@gmail.com', 'matthieu.colombert@gmail.com']
    	@admins.each do |email|
			mail(
    			delivery_method_options: { api_key: ENV['MAILJET_API_KEY'], secret_key: ENV['MAILJET_API_SECRET'], port: '25' },
    			from: "edouard.dumuguet@gmx.fr",
    			to: email, 
    			subject: 'Détails de commande')
		end
	end
end
