require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  # before do
  #   @user = FactoryBot.create :event
  # end
  
  
  describe 'GET #home' do
    before(:example) { get :home }

    it "should render a successful response" do
      expect(response).to have_http_status(200)
    end

    it "should render 'home' template" do
      expect(response).to render_template('home')
    end
  end

end