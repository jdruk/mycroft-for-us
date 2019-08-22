class CreateGateways < ActiveRecord::Migration[5.2]
  def change
    create_table :gateways do |t|
      t.string :name, null: false
      t.inet :address, null: false
      t.references :concentrator, foreign_key: true, null: false
      t.string :interface, null: false

      t.timestamps
    end
  end
end
