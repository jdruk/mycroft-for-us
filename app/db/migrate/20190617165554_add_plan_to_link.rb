class AddPlanToLink < ActiveRecord::Migration[5.2]
  def change
    add_reference :links, :plan, foreign_key: true, null: false
  end
end
