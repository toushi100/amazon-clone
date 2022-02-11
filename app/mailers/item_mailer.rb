class ItemMailer < ApplicationMailer
    def item_mail(id)
        @item = Item.find(id)
        @user = User.all
        emails = []
        for i in @user
            emails.push(i.email)
        end
        mail(to:emails,subject: "New Product Added")
    end 
end
