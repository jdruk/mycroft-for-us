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

ActiveRecord::Schema.define(version: 2019_08_22_180024) do

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
    t.bigint "client_id", null: false
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
    t.string "cell", null: false
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
    t.bigint "address_range_id"
    t.index ["address_range_id"], name: "index_concentrators_on_address_range_id"
  end

  create_table "dhcp4_options", primary_key: "option_id", id: :serial, force: :cascade do |t|
    t.integer "code", limit: 2, null: false
    t.binary "value"
    t.text "formatted_value"
    t.string "space", limit: 128
    t.boolean "persistent", default: false, null: false
    t.string "dhcp_client_class", limit: 128
    t.bigint "dhcp4_subnet_id"
    t.integer "host_id"
    t.integer "scope_id", limit: 2, null: false
    t.text "user_context"
    t.index ["host_id"], name: "fk_dhcp4_options_host1_idx"
    t.index ["scope_id"], name: "fk_dhcp4_options_scope_idx"
  end

  create_table "dhcp6_options", primary_key: "option_id", id: :serial, force: :cascade do |t|
    t.integer "code", null: false
    t.binary "value"
    t.text "formatted_value"
    t.string "space", limit: 128
    t.boolean "persistent", default: false, null: false
    t.string "dhcp_client_class", limit: 128
    t.bigint "dhcp6_subnet_id"
    t.integer "host_id"
    t.integer "scope_id", limit: 2, null: false
    t.text "user_context"
    t.index ["host_id"], name: "fk_dhcp6_options_host1_idx"
    t.index ["scope_id"], name: "fk_dhcp6_options_scope_idx"
  end

  create_table "dhcp_option_scope", primary_key: "scope_id", id: :integer, limit: 2, default: nil, force: :cascade do |t|
    t.string "scope_name", limit: 32
  end

  create_table "gateways", force: :cascade do |t|
    t.string "name", null: false
    t.inet "address", null: false
    t.bigint "concentrator_id", null: false
    t.string "interface", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concentrator_id"], name: "index_gateways_on_concentrator_id"
  end

  create_table "host_identifier_type", primary_key: "type", id: :integer, limit: 2, default: nil, force: :cascade do |t|
    t.string "name", limit: 32
  end

  create_table "hosts", primary_key: "host_id", id: :serial, force: :cascade do |t|
    t.binary "dhcp_identifier", null: false
    t.integer "dhcp_identifier_type", limit: 2, null: false
    t.bigint "dhcp4_subnet_id"
    t.bigint "dhcp6_subnet_id"
    t.bigint "ipv4_address"
    t.string "hostname", limit: 255
    t.string "dhcp4_client_classes", limit: 255
    t.string "dhcp6_client_classes", limit: 255
    t.bigint "dhcp4_next_server"
    t.string "dhcp4_server_hostname", limit: 64
    t.string "dhcp4_boot_file_name", limit: 128
    t.text "user_context"
    t.string "auth_key", limit: 32
    t.index ["dhcp_identifier", "dhcp_identifier_type", "dhcp4_subnet_id"], name: "key_dhcp4_identifier_subnet_id", unique: true, where: "((dhcp4_subnet_id IS NOT NULL) AND (dhcp4_subnet_id <> 0))"
    t.index ["dhcp_identifier", "dhcp_identifier_type", "dhcp6_subnet_id"], name: "key_dhcp6_identifier_subnet_id", unique: true, where: "((dhcp6_subnet_id IS NOT NULL) AND (dhcp6_subnet_id <> 0))"
    t.index ["dhcp_identifier_type"], name: "fk_host_identifier_type"
    t.index ["ipv4_address", "dhcp4_subnet_id"], name: "key_dhcp4_ipv4_address_subnet_id", unique: true, where: "((ipv4_address IS NOT NULL) AND (ipv4_address <> 0))"
  end

  create_table "image_cashieros", force: :cascade do |t|
    t.string "image", null: false
    t.boolean "visible", default: true, null: false
    t.bigint "cashiero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cashiero_id"], name: "index_image_cashieros_on_cashiero_id"
  end

  create_table "ipv6_reservations", primary_key: "reservation_id", id: :serial, force: :cascade do |t|
    t.string "address", limit: 39, null: false
    t.integer "prefix_len", limit: 2, default: 128, null: false
    t.integer "type", limit: 2, default: 0, null: false
    t.integer "dhcp6_iaid"
    t.integer "host_id", null: false
    t.index ["address", "prefix_len"], name: "key_dhcp6_address_prefix_len", unique: true
    t.index ["host_id"], name: "fk_ipv6_reservations_host_idx"
  end

  create_table "lease4", primary_key: "address", id: :bigint, default: nil, force: :cascade do |t|
    t.binary "hwaddr"
    t.binary "client_id"
    t.bigint "valid_lifetime"
    t.datetime "expire"
    t.bigint "subnet_id"
    t.boolean "fqdn_fwd"
    t.boolean "fqdn_rev"
    t.string "hostname", limit: 255
    t.bigint "state", default: 0
    t.text "user_context"
    t.index ["client_id", "subnet_id"], name: "lease4_by_client_id_subnet_id"
    t.index ["hwaddr", "subnet_id"], name: "lease4_by_hwaddr_subnet_id"
    t.index ["state", "expire"], name: "lease4_by_state_expire"
    t.index ["subnet_id"], name: "lease4_by_subnet_id"
  end

  create_table "lease4_stat", primary_key: ["subnet_id", "state"], force: :cascade do |t|
    t.bigint "subnet_id", null: false
    t.bigint "state", null: false
    t.bigint "leases"
  end

  create_table "lease6", primary_key: "address", id: :string, limit: 39, force: :cascade do |t|
    t.binary "duid"
    t.bigint "valid_lifetime"
    t.datetime "expire"
    t.bigint "subnet_id"
    t.bigint "pref_lifetime"
    t.integer "lease_type", limit: 2
    t.integer "iaid"
    t.integer "prefix_len", limit: 2
    t.boolean "fqdn_fwd"
    t.boolean "fqdn_rev"
    t.string "hostname", limit: 255
    t.bigint "state", default: 0
    t.binary "hwaddr"
    t.integer "hwtype", limit: 2
    t.integer "hwaddr_source", limit: 2
    t.text "user_context"
    t.index ["duid", "iaid", "subnet_id"], name: "lease6_by_duid_iaid_subnet_id"
    t.index ["state", "expire"], name: "lease6_by_state_expire"
    t.index ["subnet_id", "lease_type"], name: "lease6_by_subnet_id_lease_type"
  end

  create_table "lease6_stat", primary_key: ["subnet_id", "lease_type", "state"], force: :cascade do |t|
    t.bigint "subnet_id", null: false
    t.integer "lease_type", limit: 2, null: false
    t.bigint "state", null: false
    t.bigint "leases"
  end

  create_table "lease6_types", primary_key: "lease_type", id: :integer, limit: 2, default: nil, force: :cascade do |t|
    t.string "name", limit: 5
  end

  create_table "lease_hwaddr_source", primary_key: "hwaddr_source", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 40
  end

  create_table "lease_state", primary_key: "state", id: :bigint, default: nil, force: :cascade do |t|
    t.string "name", limit: 64, null: false
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
    t.bigint "plan_id", null: false
    t.index ["address_id"], name: "index_links_on_address_id"
    t.index ["plan_id"], name: "index_links_on_plan_id"
  end

  create_table "logs", id: false, force: :cascade do |t|
    t.datetime "timestamp", default: -> { "CURRENT_TIMESTAMP" }
    t.string "address", limit: 43
    t.text "log", null: false
    t.index ["address"], name: "address_id"
    t.index ["timestamp"], name: "timestamp_id"
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

  create_table "plans", force: :cascade do |t|
    t.integer "velocity_max_upload", null: false
    t.integer "velocity_max_download", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.boolean "visible", default: true, null: false
    t.bigint "address_range_id", null: false
    t.index ["address_range_id"], name: "index_plans_on_address_range_id"
    t.index ["name"], name: "index_plans_on_name", unique: true
  end

  create_table "schema_version", primary_key: "version", id: :integer, default: nil, force: :cascade do |t|
    t.integer "minor"
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
  add_foreign_key "concentrators", "address_ranges"
  add_foreign_key "dhcp4_options", "dhcp_option_scope", column: "scope_id", primary_key: "scope_id", name: "fk_dhcp4_option_scode", on_delete: :cascade
  add_foreign_key "dhcp4_options", "hosts", primary_key: "host_id", name: "fk_options_host1", on_delete: :cascade
  add_foreign_key "dhcp6_options", "dhcp_option_scope", column: "scope_id", primary_key: "scope_id", name: "fk_dhcp6_option_scode", on_delete: :cascade
  add_foreign_key "dhcp6_options", "hosts", primary_key: "host_id", name: "fk_options_host10", on_delete: :cascade
  add_foreign_key "gateways", "concentrators"
  add_foreign_key "hosts", "host_identifier_type", column: "dhcp_identifier_type", primary_key: "type", name: "fk_host_identifier_type", on_delete: :cascade
  add_foreign_key "image_cashieros", "cashieros"
  add_foreign_key "ipv6_reservations", "hosts", primary_key: "host_id", name: "fk_ipv6_reservations_host", on_delete: :cascade
  add_foreign_key "lease4", "lease_state", column: "state", primary_key: "state", name: "fk_lease4_state"
  add_foreign_key "lease6", "lease6_types", column: "lease_type", primary_key: "lease_type", name: "fk_lease6_type"
  add_foreign_key "lease6", "lease_state", column: "state", primary_key: "state", name: "fk_lease6_state"
  add_foreign_key "links", "addresses"
  add_foreign_key "links", "plans"
  add_foreign_key "plans", "address_ranges"
end
