class AddNetmaskToGateway < ActiveRecord::Migration[5.2]
  def change
    add_column :gateways, :netmask, :inet, null: false
  end
end
