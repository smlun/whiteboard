class UserMailer < ApplicationMailer
  default from: 'http://localhost:3000'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000'
    mail(to: 'benjabuddy91@gmail.com', subject: 'Welcome to Whiteboard!')
  end
end
