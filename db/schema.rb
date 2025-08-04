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

ActiveRecord::Schema[8.0].define(version: 2025_08_04_214040) do
  create_schema "admin"

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "admin_transactions", force: :cascade do |t|
    t.bigint "rental_id", null: false
    t.decimal "amount"
    t.string "transaction_type"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_admin_transactions_on_rental_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "rental_id", null: false
    t.string "document_type"
    t.string "file_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_documents_on_rental_id"
  end

  create_table "dress_variants", force: :cascade do |t|
    t.bigint "dress_id", null: false
    t.bigint "size_id", null: false
    t.string "sku", null: false
    t.string "color"
    t.string "condition"
    t.string "status"
    t.decimal "daily_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dress_id"], name: "index_dress_variants_on_dress_id"
    t.index ["size_id"], name: "index_dress_variants_on_size_id"
  end

  create_table "dresses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_dresses_on_category_id"
  end

  create_table "fines", force: :cascade do |t|
    t.bigint "rental_id", null: false
    t.decimal "amount"
    t.string "reason"
    t.boolean "paid", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_fines_on_rental_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "dress_variant_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.date "return_date"
    t.decimal "deposit_amount"
    t.boolean "deposit_returned", default: false
    t.decimal "total_cost"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_rentals_on_customer_id"
    t.index ["dress_variant_id"], name: "index_rentals_on_dress_variant_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "role"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admin_transactions", "rentals"
  add_foreign_key "documents", "rentals"
  add_foreign_key "dress_variants", "dresses"
  add_foreign_key "dress_variants", "sizes"
  add_foreign_key "dresses", "categories"
  add_foreign_key "fines", "rentals"
  add_foreign_key "rentals", "customers"
  add_foreign_key "rentals", "dress_variants"
end
