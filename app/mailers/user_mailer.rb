class UserMailer < ApplicationMailer

	def buy_email(user, products)
		headers['X-MJ-CustomID'] = 'rubyPR_Test_ID_1469790724'
		headers['X-MJ-EventPayload'] = 'rubyPR_Test_Payload'
		headers['X-MJ-TemplateLanguage'] = 'true'
		
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
    	headers['X-MJ-CustomID'] = 'rubyPR_Test_ID_1469790724'
		headers['X-MJ-EventPayload'] = 'rubyPR_Test_Payload'
		headers['X-MJ-TemplateLanguage'] = 'true'
    	
    	Dotenv.load
    	@products = products
    	@user = user
    	mail(
    			delivery_method_options: { api_key: ENV['MAILJET_API_KEY'], secret_key: ENV['MAILJET_API_SECRET'], port: '25' },
    			from: "edouard.dumuguet@gmx.fr",
    			to: "piere@live.fr",
    			subject: 'Détails de commande')
    	mail(
    			delivery_method_options: { api_key: ENV['MAILJET_API_KEY'], secret_key: ENV['MAILJET_API_SECRET'], port: '25' },
    			from: "edouard.dumuguet@gmx.fr",
    			to: "tina.helfer2@gmail.com",
    			subject: 'Détails de commande')
    	mail(
    			delivery_method_options: { api_key: ENV['MAILJET_API_KEY'], secret_key: ENV['MAILJET_API_SECRET'], port: '25' },
    			from: "edouard.dumuguet@gmx.fr",
    			to: "a.lotz@hotmail.fr",
    			subject: 'Détails de commande')
    	mail(
    			delivery_method_options: { api_key: ENV['MAILJET_API_KEY'], secret_key: ENV['MAILJET_API_SECRET'], port: '25' },
    			from: "edouard.dumuguet@gmx.fr",
    			to: "matthieu.colombert@gmail.com",
    			subject: 'Détails de commande')
			
		
	end
end
