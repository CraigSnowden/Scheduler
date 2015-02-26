class AddAlwaysAvailableToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :always_available, :boolean
  end
end
