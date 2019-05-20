class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :description
      t.boolean :visible, default: true, null: false

      t.timestamps
    end
  end
end
