require 'rails_helper'

RSpec.describe Event, type: :model do
  subject = FactoryBot.create :event

  p subject 
  context '#initialize' do
    it { expect(subject).to be_valid }

    it "name should be valid" do
      expect(subject.name).not_to be_empty
    end

    it "gift amount price should be valid" do
      # subject.max_amount = nil && subject.max_amount < 4
      expect(subject.max_amount).to be >= (4)
    end

  end

end
