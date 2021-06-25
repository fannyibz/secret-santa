class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :email
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
