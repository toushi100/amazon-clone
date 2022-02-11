class UserMailer < ApplicationMailer
    def welcome_mail(id)
        user = User.find(id)
        UserMailer.with(user: user).welcome_mail
    end
end