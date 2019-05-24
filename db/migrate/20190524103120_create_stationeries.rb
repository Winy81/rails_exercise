class CreateStationeries < ActiveRecord::Migration[5.2]
  def change
    create_table :stationeries do |t|
      t.string :name
      t.integer :product_code
      t.boolean :consumable
      t.boolean :availability

      t.timestamps
    end
  end
end
