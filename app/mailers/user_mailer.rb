class UserMailer < ApplicationMailer ## define any emails our web application will send to users inside this class
	default from: "webdude@hipsterbikesfn.com"

	def contact_form(email, name, message)
		@message = message
		@name = name
		mail(
			:from => email,
			:to => "al3x.ohm@gmail.com",
			:subject => "a new contact form message from #{name}",
			)
	end
end
