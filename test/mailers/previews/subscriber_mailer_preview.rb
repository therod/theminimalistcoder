class SubscriberMailerPreview < ActionMailer::Preview
  def double_opt_in_email
    SubscriberMailer.double_opt_in_email(Subscriber.first)
  end
end
