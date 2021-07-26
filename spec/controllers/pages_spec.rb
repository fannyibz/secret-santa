require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  before do
    @user = FactoryBot.create :event
  end
  
  
  describe 'GET #home' do
    before(:example) { get users_path }  # get(:index)
    it "is a success" do
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
  end
end