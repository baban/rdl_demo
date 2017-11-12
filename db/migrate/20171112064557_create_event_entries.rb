class CreateEventEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :event_entries do |t|
      t.integer :event_id, null: false
      t.integer :user_id,  null: false

      t.timestamps
    end
  end
end
