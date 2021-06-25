# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/you_are_santa
  def you_are_santa
    event = Event.last
    UserMailer.you_are_santa(event)
  end

end
