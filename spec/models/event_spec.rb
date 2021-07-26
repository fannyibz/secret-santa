require 'rails_helper'

RSpec.describe Event, type: :model do
  subject = Event.create
  subject2 = FactoryBot.create :event

  context '#initialize' do

    it "should return the name of the event" do
      event = Event.new({ name: "Best Christmas" })
      expect(event.name).to eq("Best Christmas")
    end
    
    it "gift amount price should be greater or equal than 4" do
      expect(subject2.max_amount).to be >= (4)
    end

  end

  # Validations
  context 'ActiveModel validations' do
    it { should validate_presence_of(:name) }
    it { should accept_nested_attributes_for(:participants) }

    it do
      should validate_numericality_of(:max_amount).
        is_greater_than_or_equal_to(4)
    end
  end

  #Associations
  context "ActiveRecord associations" do
    it { should have_many(:participants) }
    it { should belong_to(:user) }
  end

  describe Participant do
    it { should belong_to(:event) }
  end
end
