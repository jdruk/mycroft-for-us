class AddCategoriesToCashiero < ActiveRecord::Migration[5.2]
  def change
    add_reference :cashieros, :category, foreign_key: true
  end
end
