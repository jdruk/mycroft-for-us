class CreateNotableRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :notable_requests do |t|
      t.string :note_type
      t.text :note
      t.integer :user_id
      t.string :user_type
      t.text :action
      t.integer :status
      t.text :url
      t.string :request_id
      t.string :ip
      t.text :user_agent
      t.text :referrer
      t.text :params
      t.decimal :request_time
      t.timestamp :created_at
    end

    add_index :notable_requests, [:user_id, :user_type]
  end
end
