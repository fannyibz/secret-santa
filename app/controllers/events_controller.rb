class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save ? redirect_to(root_path) : render(:new)
  end

  def show
    @event = Event.find(params[:id])
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
