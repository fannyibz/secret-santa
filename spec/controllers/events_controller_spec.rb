require "rails_helper"

RSpec.describe EventsController, type: :controller do

  describe 'Event #create' do

    context 'invalid params' do
      before(:each) do
        event_test = FactoryBot.create :event
      end

      it 'should return a 200' do
        expect(response).to have_http_status(200)
      end

      # it 'should contain participants' do
      #   p response
      #   json = JSON.parse(response.body)
      #   # expect(response).to include ()
      # end

      it "shoul persit event" do
        p Event.all 
        expect(Event.count).to eq(1)
      end

    end
  
  end

end


#   before do
#     @user = FactoryBot.create :event
#     @event = FactoryBot.create :event
#     @participant = FactoryBot.create :participant
#   end
  
#   describe "POST create" do
#     describe "with valid params" do
#       it do
#         params = {
#           event: {
#             name: "Noël Noël",
#             max_amount: 7,
#             user: @user.id,
#             participants_attributes: {
#               first_name: @participant.first_name,
#               email: @participant.email,
#             }
#           }
#         }
#         should permit(:name, 
#                       :max_amount, 
#                       :user, 
#                       participants_attributes: 
#                         [:id, :first_name, :email, :_destroy]).
#           for(:create, params: params).
#           on(:event)
#       end
#     end
#   end
  
# end