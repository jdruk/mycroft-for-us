class AddAddressRangeToPlans < ActiveRecord::Migration[5.2]
  def change
    add_reference :plans, :address_range, foreign_key: true, null: false
  end
end
