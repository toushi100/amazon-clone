class AdminMailMailer < ApplicationMailer
    def Admin_mail(@user, @item)
       @user
       @item
        mail(to:"admin@email.com",subject: "Updates")
    end
end
