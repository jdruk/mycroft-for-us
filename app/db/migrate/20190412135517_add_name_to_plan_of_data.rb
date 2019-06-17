class AddNameToPlanOfData < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :name, :string, null: false
    add_index :plans, :name, unique: true
  end
end
