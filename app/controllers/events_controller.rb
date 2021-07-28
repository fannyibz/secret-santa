class EventsController < ApplicationController

  def create
    p event_params
    @event = Event.new(event_params)
    @event.user = current_user
    
    if @event.save
      SecretSantaService.new(event: @event).call
      redirect_to(root_path)
    else
      # flash.now[:messages] = @event.errors.full_messages
      @event.errors.full_messages
      redirect_to(root_path, alert: @event.errors.full_messages)
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name, :user, :max_amount, participants_attributes: [
        :id, :first_name, :email, :_destroy
      ]
    )
  end

end
