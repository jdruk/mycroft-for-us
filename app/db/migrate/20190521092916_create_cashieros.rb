class CreateCashieros < ActiveRecord::Migration[5.2]
  def change
    create_table :cashieros do |t|
      t.integer :operation, null: false 
      t.monetize :value, null: false
      t.string :description
      t.json :photos
      t.references :user, foreign_key: true, null: false
      t.integer :payment_type, null: false, default: 0
      t.references :bank_account, foreign_key: true
      t.boolean :visible, default: true, null: false

      t.timestamps
    end
  end
end
