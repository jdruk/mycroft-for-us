class CreateConcentrators < ActiveRecord::Migration[5.2]
  def change
    create_table :concentrators do |t|
      t.string :hostname
      t.string :address
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
