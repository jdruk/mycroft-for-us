class AddCityAndStateToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :city, :string, null: false
    add_column :addresses, :state, :string, null: false
  end
end
