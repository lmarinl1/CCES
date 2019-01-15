class NewUserEmailMailer < ApplicationMailer
	def notify_user(user, password, current_user)
		@user = user
		@password = password
		@estefan = Estefan.where(email: @user.email)[0]
		@creador = Estefan.find(current_user.id)
		mail(to: @user.email, subject: "Bienvenid@ "+@estefan.nombre+" a SysCCES")
	end
end
