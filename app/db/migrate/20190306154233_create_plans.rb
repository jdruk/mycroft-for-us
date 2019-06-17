class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :velocity_max_upload, null: false
      t.integer :velocity_max_download, null: false

      t.timestamps
    end
  end
end
