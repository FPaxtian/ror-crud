# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_24_070337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.bigint "employess_celphone"
    t.bigint "nss"
    t.string "category"
    t.string "active"
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_employees_on_users_id", on_delete => :cascade, :on_update => :cascade
  end

  create_table "providers", force: :cascade do |t|
    t.string "company"
    t.bigint "celphone"
    t.string "name_contact"
    t.integer "type_providers"
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_providers_on_users_id", on_delete => :cascade, :on_update => :cascade
  end

  create_table "tools", force: :cascade do |t|
    t.string "tools_name"
    t.string "tools_models"
    t.string "tools_brands"
    t.date "date_acquistion"
    t.bigint "amount_storage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "users_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "type_users"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.string "works_name"
    t.string "worls_desc"
    t.string "location"
    t.integer "type_works"
    t.string "acount_woks"
    t.date "start_date_works"
    t.date "end_date_works"
    t.bigint "employees_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employees_id"], name: "index_works_on_employees_id"
  end

  add_foreign_key "employees", "users", column: "users_id"
  add_foreign_key "providers", "users", column: "users_id"
  add_foreign_key "works", "employees", column: "employees_id"
end
