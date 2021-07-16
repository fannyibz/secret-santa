require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  before do
    @user = FactoryBot.create :event
  end
  
  
  describe 'GET #home' do
    it "assigns a new event as @event" do
      get :home, {}
      assigns(:event).should be_a_new(Event)
    end
  end
  
end