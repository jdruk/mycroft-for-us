class CreateConcentrators < ActiveRecord::Migration[5.2]
  def change
    create_table :concentrators do |t|
      t.string :hostname, null: false
      t.string :address, null: false
      t.string :login, null: false
      t.string :password, null: false

      t.timestamps
    end
  end
end
