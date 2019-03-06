class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :login
      t.string :password
      t.integer :status
      t.integer :type

      t.timestamps
    end
  end
end
