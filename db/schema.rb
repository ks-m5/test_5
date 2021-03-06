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

ActiveRecord::Schema.define(version: 2018_11_12_040835) do

  create_table "buy_products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.integer "count"
    t.integer "buy_id"
  end

  create_table "buys", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "count"
    t.integer "cart_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "chats", force: :cascade do |t|
    t.integer "user_id"
    t.string "content"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "name"
    t.string "portal"
    t.string "state"
    t.string "street"
    t.string "adress"
    t.string "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment"
  end

  create_table "products", force: :cascade do |t|
    t.string "artist"
    t.string "album"
    t.string "label"
    t.text "introduction"
    t.integer "price"
    t.integer "count"
    t.string "genre"
    t.string "state"
    t.text "song"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "name_kana"
    t.string "potal"
    t.string "street"
    t.string "adress"
    t.string "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.text "image_id"
    t.text "profile"
    t.integer "cart_id"
    t.string "hn"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
