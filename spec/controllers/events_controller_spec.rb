require "rails_helper"

RSpec.describe EventsController, type: :controller do

  # let(:valid_attributes) {
  #   attributes_for(:event)
  # }
  
  let(:event_test) { 
    create(:event)
  }

  describe 'Event #create' do

    context 'valid params' do
      before(:each) do
        event_test
      end
      
      it 'should return a 200' do
        expect(response).to have_http_status(200)
      end
      
      it 'checks that an event can be created' do
        expect(event_test).to be_valid
      end
      
      it "shoul persit event" do
        expect(Event.count).to eq(1)
      end
    end
    
  end
  
end


# it "assigns a newly created post as @event" do
#   expect(assigns(:event)).to be_a(Event)
#   expect(assigns(:event)).to be_persisted
# end

# context 'when params[:event] is not present' do before { post :create, {} }
#   it 'does not assign an event' do
#   p assigns(:event)
#   expect(assigns(:event)).to be_nil
#   end 
# end



# it 'should contain participants' do
#   # expect(response).to include (:name)
# end
