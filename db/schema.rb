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

ActiveRecord::Schema.define(version: 20200517002615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "author_name"
    t.string "Mehmood_name"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.string "booking_details"
    t.bigint "customer_id"
    t.bigint "venue_id"
    t.string "reservation_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["venue_id"], name: "index_bookings_on_venue_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "phone"
    t.date "date_of_birth"
    t.string "zip"
  end

  create_table "payments", force: :cascade do |t|
    t.string "amount"
    t.string "cashpaid"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "name"
    t.string "sub_details"
    t.bigint "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_subscriptions_on_venue_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venue_owners", force: :cascade do |t|
    t.string "name"
    t.string "contact_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "venue_type"
    t.string "contact_no"
    t.bigint "venue_owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_owner_id"], name: "index_venues_on_venue_owner_id"
  end

  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "venues"
  add_foreign_key "payments", "bookings"
  add_foreign_key "subscriptions", "venues"
  add_foreign_key "venues", "venue_owners"
end
