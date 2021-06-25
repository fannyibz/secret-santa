# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/event_creation
  def event_creation
    event = Event.last
    UserMailer.event_creation(event)
  end

end
