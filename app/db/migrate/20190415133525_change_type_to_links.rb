class ChangeTypeToLinks < ActiveRecord::Migration[5.2]
  def change
  	rename_column :links, :type, :type_link
  end
end
