class EventsController < ApplicationController

  def create
    p event_params
    @event = Event.new(event_params)
    @event.user = current_user
    
    if @event.save
      SecretSantaService.new(event: @event).call
      respond_to do |format|
        format.html { redirect_to(root_path) }
        format.js {
          render  :template => "events/create.js.erb",
                  :layout => false
      }
      end
    else
      # flash.now[:messages] = @event.errors.full_messages
      respond_to do |format|
        format.html { redirect_to(root_path, alert: @event.errors.full_messages)}
        format.js {
          render  :template => "events/create_fail.js.erb",
                  :layout => false
        }
        
      end
      
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
