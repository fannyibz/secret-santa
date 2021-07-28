require 'rails_helper'

RSpec.describe "Events", type: :request do

  # current_user = User.first_or_create!(email: 'dean@example.com', password: 'password')

  # let(:valid_attributes) do
  #   {
  #     'id' => '1',
  #     'name' => 'winter',
  #     'max_amount' => 15,
  #     'user_id' => current_user.id
  #   }
  # end

  # let(:invalid_attributes) do
  #   {
  #     'id' => 'a',
  #     'name' => '',
  #     'max_amount' => 1
  #   }
  # end

  describe "POST users#create" do
    it 'create user with valid attributes' do
      current_user = User.first_or_create!(email: 'dean@example.com', password: 'password')
      event_params = { event: {
        id:         '1',
        name:       'winter',
        max_amount: 15,
        user_id:    current_user.id
      }}
    
      post events_path, params: event_params.to_json, :headers => { "Content-Type": "application/json" }
      p response.body
      p response.status
      expect(response).to have_http_status(201)
    end
  end


#   describe 'POST /create' do
#     context 'with valid parameters' do
#       it 'creates a new Event' do
#         expect do
#           # count number of events lines
#           # create params to send 
#           # Send params to url controller
#           # re count the number of events (should be + 1)
#           current_user = User.first_or_create!(email: 'dean@example.com', password: 'password')
          
#           event_params = {
#             event: {
#               id:         '1',
#               name:       'winter',
#               max_amount: 15,
#               user_id:    current_user.id
#             }
#           }
          
#           post "/events", params: event_params.to_json, :headers => { "Content-Type": "application/json" }
#         end.to change(Event, :count).by(1)
#       end
      
#     end
#   end
end

#   it 'redirects to the created event' do
#     post events_url, params: { post: valid_attributes }
#     expect(response).to be_successful
#   end
# end

# context 'with invalid parameters' do
#   it 'does not create a new Event' do
#     expect do
#       post events_url, params: { post: invalid_attributes }
#     end.to change(event_test, :count).by(0)
#   end

#   it "renders a successful response (i.e. to display the 'new' template)" do
#     post events_url, params: { post: invalid_attributes }
#     expect(response).to be_successful
#   end