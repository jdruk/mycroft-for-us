class AddVisibleToAllModels < ActiveRecord::Migration[5.2]
  def change
  	add_column :addresses, :visible, :boolean, default: true, null: false
  	add_column :address_ranges, :visible, :boolean, default: true, null: false
  	add_column :clients, :visible, :boolean, default: true, null: false
  	add_column :concentrators, :visible, :boolean, default: true, null: false
  	add_column :links, :visible, :boolean, default: true, null: false
  	add_column :plan_of_data, :visible, :boolean, default: true, null: false
  	add_column :users, :visible, :boolean, default: true, null: false
  end
end
