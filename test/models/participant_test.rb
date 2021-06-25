# == Schema Information
#
# Table name: participants
#
#  id         :bigint           not null, primary key
#  first_name :string
#  email      :string
#  event_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
