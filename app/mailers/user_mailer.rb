class UserMailer < ApplicationMailer
    def welcome_email(username)
      @user = username
      mail(to: 'sheikhhamza012@gmail.com', subject: 'Welcome to My Awesome Site')
    end
    def crontest
      puts "sending"
      mail(to: 'sheikhhamza012@gmail.com', subject: 'Welcome to My Awesome Site')
    end
end
