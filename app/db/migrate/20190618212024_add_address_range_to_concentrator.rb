class AddAddressRangeToConcentrator < ActiveRecord::Migration[5.2]
  def change
    add_reference :concentrators, :address_range, foreign_key: true
  end
end
