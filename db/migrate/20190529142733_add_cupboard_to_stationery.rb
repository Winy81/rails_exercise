class AddCupboardToStationery < ActiveRecord::Migration[5.2]
  def change
    add_column :stationeries, :cupboard, :string
  end
end
