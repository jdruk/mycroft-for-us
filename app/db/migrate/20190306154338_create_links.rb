class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :login
      t.string :password
      t.integer :status, null: false, default: 0
      t.integer :type, null: false, default: 0

      t.timestamps
    end
  end
end
