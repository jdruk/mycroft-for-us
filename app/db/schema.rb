# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_26_135402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_ranges", force: :cascade do |t|
    t.string "name", null: false
    t.inet "start_range", null: false
    t.inet "end_range", null: false
    t.bigint "concentrator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "visible", default: true, null: false
    t.index ["concentrator_id"], name: "index_address_ranges_on_concentrator_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "zip_code", null: false
    t.string "address", null: false
    t.string "number"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "city", null: false
    t.string "state", null: false
    t.string "neighborhood", null: false
    t.string "complement", null: false
    t.boolean "visible", default: true, null: false
    t.index ["client_id"], name: "index_addresses_on_client_id"
  end

  create_table "audits", force: :cascade do |t|
    t.integer "auditable_id"
    t.string "auditable_type"
    t.integer "associated_id"
    t.string "associated_type"
    t.integer "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.integer "version", default: 0
    t.string "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "associated_index"
    t.index ["auditable_type", "auditable_id", "version"], name: "auditable_index"
    t.index ["created_at"], name: "index_audits_on_created_at"
    t.index ["request_uuid"], name: "index_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "user_index"
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "name", null: false
    t.string "account", null: false
    t.string "agency", null: false
    t.string "digit"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bank_id", null: false
    t.index ["bank_id"], name: "index_bank_accounts_on_bank_id"
  end

  create_table "banks", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashieros", force: :cascade do |t|
    t.integer "operation", null: false
    t.integer "value_cents", default: 0, null: false
    t.string "value_currency", default: "USD", null: false
    t.string "description"
    t.bigint "user_id", null: false
    t.integer "payment_type", default: 0, null: false
    t.bigint "bank_account_id"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["bank_account_id"], name: "index_cashieros_on_bank_account_id"
    t.index ["category_id"], name: "index_cashieros_on_category_id"
    t.index ["user_id"], name: "index_cashieros_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.boolean "visible", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "cpf", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "visible", default: true, null: false
    t.string "rg"
    t.string "cell"
    t.string "phone"
    t.text "description"
  end

  create_table "concentrators", force: :cascade do |t|
    t.string "hostname", null: false
    t.string "address", null: false
    t.string "login", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "visible", default: true, null: false
  end

  create_table "image_cashieros", force: :cascade do |t|
    t.string "image", null: false
    t.boolean "visible", default: true, null: false
    t.bigint "cashiero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cashiero_id"], name: "index_image_cashieros_on_cashiero_id"
  end

  create_table "impressions", force: :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.integer "status", default: 0, null: false
    t.integer "type_link", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id", null: false
    t.boolean "visible", default: true, null: false
    t.index ["address_id"], name: "index_links_on_address_id"
  end

  create_table "notable_jobs", force: :cascade do |t|
    t.string "note_type"
    t.text "note"
    t.text "job"
    t.string "job_id"
    t.string "queue"
    t.decimal "runtime"
    t.decimal "queued_time"
    t.datetime "created_at"
  end

  create_table "notable_requests", force: :cascade do |t|
    t.string "note_type"
    t.text "note"
    t.integer "user_id"
    t.string "user_type"
    t.text "action"
    t.integer "status"
    t.text "url"
    t.string "request_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.text "params"
    t.decimal "request_time"
    t.datetime "created_at"
    t.index ["user_id", "user_type"], name: "index_notable_requests_on_user_id_and_user_type"
  end

  create_table "plan_of_data", force: :cascade do |t|
    t.integer "velocity_max_upload", null: false
    t.integer "velocity_max_download", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.boolean "visible", default: true, null: false
    t.index ["name"], name: "index_plan_of_data_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.integer "role", default: 0, null: false
    t.boolean "approved", default: false, null: false
    t.string "name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "visible", default: true, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "address_ranges", "concentrators"
  add_foreign_key "addresses", "clients"
  add_foreign_key "bank_accounts", "banks"
  add_foreign_key "cashieros", "bank_accounts"
  add_foreign_key "cashieros", "categories"
  add_foreign_key "cashieros", "users"
  add_foreign_key "image_cashieros", "cashieros"
  add_foreign_key "links", "addresses"
end
