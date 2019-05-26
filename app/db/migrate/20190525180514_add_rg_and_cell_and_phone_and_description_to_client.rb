class AddRgAndCellAndPhoneAndDescriptionToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :rg, :string
    add_column :clients, :cell, :string, not: false
    add_column :clients, :phone, :string
    add_column :clients, :description, :text
  end
end
