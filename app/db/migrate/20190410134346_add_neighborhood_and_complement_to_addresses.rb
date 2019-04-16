class AddNeighborhoodAndComplementToAddresses < ActiveRecord::Migration[5.2]
  def change
  	add_column :addresses, :neighborhood, :string, null: false
  	add_column :addresses, :complement, :string, null: false
  end
end
