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

ActiveRecord::Schema.define(version: 2019_04_16_154838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_ranges", force: :cascade do |t|
    t.string "name", null: false
    t.inet "start_range", null: false
    t.inet "end_range", null: false
    t.bigint "concentrator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concentrator_id"], name: "index_address_ranges_on_concentrator_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "zip_code", null: false
    t.string "address", null: false
    t.string "number"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "latitude", null: false
    t.decimal "longitude", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "neighborhood", null: false
    t.string "complement", null: false
    t.index ["client_id"], name: "index_addresses_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "cpf", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concentrators", force: :cascade do |t|
    t.string "hostname", null: false
    t.string "address", null: false
    t.string "login", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.integer "status", default: 0, null: false
    t.integer "type_link", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id", null: false
    t.index ["address_id"], name: "index_links_on_address_id"
  end

  create_table "plan_of_data", force: :cascade do |t|
    t.integer "velocity_max_upload", null: false
    t.integer "velocity_max_download", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "address_ranges", "concentrators"
  add_foreign_key "addresses", "clients"
  add_foreign_key "links", "addresses"
end
