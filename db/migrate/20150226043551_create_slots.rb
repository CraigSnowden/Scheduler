class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.time :start_time
      t.time :end_time
      t.references :room, index: true

      t.timestamps null: false
    end
    add_foreign_key :slots, :rooms
  end
end
