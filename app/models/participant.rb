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
class Participant < ApplicationRecord
  belongs_to :event

  after_create :send_event_creation

  def send_event_creation
    UserMailer.event_creation(self).deliver_now
  end
end
