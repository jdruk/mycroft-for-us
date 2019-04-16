class CreatePlanOfData < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_of_data do |t|
      t.integer :velocity_max_upload, null: false
      t.integer :velocity_max_download, null: false

      t.timestamps
    end
  end
end
