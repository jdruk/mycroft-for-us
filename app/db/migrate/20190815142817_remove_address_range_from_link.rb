class RemoveAddressRangeFromLink < ActiveRecord::Migration[5.2]
  def change
   	remove_column :links, :address_range_id 
  end
end
