require 'rails_helper'

RSpec.describe Event, type: :model do

  context '#initialize' do
    it { expect(subject).to be_valid }

    it "name should be valid" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "gift amount price should be valid" do
      subject.max_amount = nil && subject.max_amount >= 4
      expect(subject).to_not be_valid
    end

  end

end
