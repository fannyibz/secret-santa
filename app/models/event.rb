# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  name       :string
#  max_amount :integer
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Event < ApplicationRecord
  belongs_to :user
  has_many :participants
  accepts_nested_attributes_for :participants, allow_destroy: true
end
