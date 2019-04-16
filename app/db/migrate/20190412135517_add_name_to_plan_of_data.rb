class AddNameToPlanOfData < ActiveRecord::Migration[5.2]
  def change
    add_column :plan_of_data, :name, :string, null: false
    add_index :plan_of_data, :name, unique: true
  end
end
