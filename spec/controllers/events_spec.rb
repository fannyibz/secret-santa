require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  before do
    @user = FactoryBot.create :event
    @event = FactoryBot.create :event
    @participant = FactoryBot.create :participant
  end
  
  describe "POST create" do
    describe "with valid params" do
      it do
        params = {
          event: {
            name: "Noël Noël",
            max_amount: 7,
            user: @user.id,
            participants_attributes: {
              first_name: @participant.first_name,
              email: @participant.email,
            }
          }
        }
        should permit(:name, 
                      :max_amount, 
                      :user, 
                      participants_attributes: 
                        [:id, :first_name, :email, :_destroy]).
          for(:create, params: params).
          on(:event)
      end
    end

    # describe "with invalid params" do
    #   it "assigns a newly created but unsaved order as @order" do
    #     # Trigger the behavior that occurs when invalid params are submitted
    #     Order.any_instance.stub(:save).and_return(false)
    #     post :create, {:order => {  }}, valid_session
    #     assigns(:order).should be_a_new(Order)
    #   end

    #   it "re-renders the 'new' template" do
    #     # Trigger the behavior that occurs when invalid params are submitted
    #     Order.any_instance.stub(:save).and_return(false)
    #     post :create, {:order => {  }}, valid_session
    #     response.should render_template("new")
    #   end
    # end
  end
  
end