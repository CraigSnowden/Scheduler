class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :slot, index: true
      t.integer :status
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :bookings, :slots
  end
end
