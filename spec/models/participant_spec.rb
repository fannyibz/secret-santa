require 'rails_helper'

RSpec.describe Participant, type: :model do
  participant = FactoryBot.create :participant
  p participant
  # Validations
  context 'ActiveModel validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:email) }
    it { should_not allow_value("testtest").for(:email) }
  end

  #Associations
  describe "ActiveRecord associations" do
    it { should belong_to(:event) }
  end
end
