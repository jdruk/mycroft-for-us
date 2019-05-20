class AddBankToBankAccount < ActiveRecord::Migration[5.2]
  def change
    add_reference :bank_accounts, :bank, foreign_key: true, null: false
  end
end
