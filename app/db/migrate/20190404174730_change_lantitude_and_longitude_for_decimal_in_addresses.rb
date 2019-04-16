class ChangeLantitudeAndLongitudeForDecimalInAddresses < ActiveRecord::Migration[5.2]
  def change
  	remove_column :addresses, :latitude
  	remove_column :addresses, :longitude
  	add_column :addresses, :latitude, :decimal, null: false
  	add_column :addresses, :longitude, :decimal, null: false
  end
end
