class AddGiftParticipantToParticipant < ActiveRecord::Migration[6.1]
  def change
    add_column :participants, :gift_participant, :integer
  end
end
