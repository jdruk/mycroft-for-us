class RemovePhotosFromCashiero < ActiveRecord::Migration[5.2]
  def change
  	remove_column :cashieros, :photos
  end
end
