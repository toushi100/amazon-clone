require 'active_support/core_ext/date_and_time/calculations'


class SendingMailsJob < ApplicationJob
  queue_as :default

  def perform(user)
   UserMailer.with(user: user).welcome_mail(user.id).deliver_now
  end



end

class SendingMailsAdminJob < ApplicationJob
  queue_as :default
  def perform()
    @user = User.where(created_at: DateAndTime.all_day)
    @item = Item.where(created_at: DateAndTime.all_day)

    AdminMailMailer.Admin_mail(@user, @item).deliver_now
    SendingMailsAdminJob.set(wait_until: Time.now + 1.day).perform_later()

  end



end