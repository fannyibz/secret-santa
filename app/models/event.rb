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
  include Abyme::Model

  belongs_to :user
  has_many :participants

  abymize :participants

  validates :name, presence: true
  validates :max_amount, presence: true, numericality: { greater_than_or_equal_to: 4 }
      
end
