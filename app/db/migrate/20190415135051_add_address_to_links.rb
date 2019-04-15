class AddAddressToLinks < ActiveRecord::Migration[5.2]
  def change
    add_reference :links, :address, foreign_key: true, null: false
  end
end
