class AddUserToStationery < ActiveRecord::Migration[5.2]
  def change
    add_reference :stationeries, :user, foreign_key: true
  end
end
