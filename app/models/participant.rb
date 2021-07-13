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

  validates :first_name , presence: true
  validates :email, format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  },
                    uniqueness: { case_sensitive: false },
                    length: { minimum: 4, maximum: 254 }

  def send_event_creation
    UserMailer.event_creation(self).deliver_now
  end
end
