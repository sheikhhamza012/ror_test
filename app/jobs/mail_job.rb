class MailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    p "send"
    sendM(args[0])
  end
  def sendM(user)

    UserMailer.welcome_email( user).deliver_now
    #UserMailer.crontest.deliver_now
  end
end
