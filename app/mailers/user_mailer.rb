class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.you_are_santa.subject
  #
  def event_creation(participant)
    @participant = participant
    @event = participant.event

    mail(to: @participant.email, subject: '🎅 You are the santa today 🎅')
  end
end
