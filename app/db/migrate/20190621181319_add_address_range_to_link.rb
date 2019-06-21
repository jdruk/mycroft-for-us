class AddAddressRangeToLink < ActiveRecord::Migration[5.2]
  def change
    add_reference :links, :address_range, foreign_key: true
  end
end
