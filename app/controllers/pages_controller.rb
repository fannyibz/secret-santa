class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @alert = I18n.t('devise.failure.unauthenticated') if current_user.nil?
    @event = Event.new
  end
end
