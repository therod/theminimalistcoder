class SubscriberMailer < ApplicationMailer
  def double_opt_in_email(subscriber)
    @subscriber = subscriber

    mail to: @subscriber.email, subject: "Please confirm your subscription"
  end
end
