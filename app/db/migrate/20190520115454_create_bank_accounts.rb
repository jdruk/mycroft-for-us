class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.string :name, null: false
      t.string :account, null: false
      t.string :agency, null: false
      t.string :digit
      t.boolean :visible, default: true, null: false

      t.timestamps
    end
  end
end
