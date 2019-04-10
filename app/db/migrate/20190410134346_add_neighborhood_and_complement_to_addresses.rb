class AddNeighborhoodAndComplementToAddresses < ActiveRecord::Migration[5.2]
  def change
  	add_column :addresses, :neighborhood, :string
  	add_column :addresses, :complement, :string
  end
end
