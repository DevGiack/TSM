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


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_admin_types_on_user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "Quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_carts_on_product_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "Name"
    t.integer "Discount_percent"
    t.boolean "Active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_discounts_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cart_id"
    t.bigint "user_id"
    t.bigint "user_adress_id"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["user_adress_id"], name: "index_orders_on_user_adress_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "Payment_type"
    t.boolean "Status"
    t.float "Amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "order_id"
    t.index ["order_id"], name: "index_payments_on_order_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "Name"
    t.text "Description"
    t.string "Unity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "Price"
    t.bigint "product_category_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "Quantity_gr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_stocks_on_product_id"
  end

  create_table "user_adresses", force: :cascade do |t|
    t.integer "test"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_user_adresses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.datetime "last_login", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admin_types", "users"
  add_foreign_key "carts", "products"
  add_foreign_key "discounts", "products"
  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "user_adresses"
  add_foreign_key "orders", "users"
  add_foreign_key "payments", "orders"
  add_foreign_key "payments", "users"
  add_foreign_key "products", "product_categories"
  add_foreign_key "stocks", "products"
  add_foreign_key "user_adresses", "users"
end
