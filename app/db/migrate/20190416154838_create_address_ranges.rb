class CreateAddressRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :address_ranges do |t|
      t.string :name, null: false
      t.inet :start_range, null: false
      t.inet :end_range, null: false
      t.references :concentrator, foreign_key: true, null: false

      t.timestamps
    end
  end
end
