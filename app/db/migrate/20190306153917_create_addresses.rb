class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :zip_code,null: false
      t.string :address, null: false
      t.string :number
      t.string :latitude
      t.string :longitude
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
