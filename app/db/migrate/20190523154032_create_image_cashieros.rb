class CreateImageCashieros < ActiveRecord::Migration[5.2]
  def change
    create_table :image_cashieros do |t|
      t.string :image, null: false
      t.boolean :visible, default: true, null: false
      t.references :cashiero, foreign_key: true

      t.timestamps
    end
  end
end
