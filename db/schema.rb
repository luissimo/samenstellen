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

ActiveRecord::Schema.define(version: 20170829181747) do

  create_table "billing_addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "address_addition"
    t.string "zip_code"
    t.string "city"
    t.string "phone"
    t.string "email"
    t.string "floor"
    t.string "elevator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "session_id"
  end

  create_table "mattresses", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.string "email"
    t.string "weight"
    t.integer "length"
    t.string "sleep_position"
    t.string "body_shape"
    t.string "warm_sleeping"
    t.string "diseases"
    t.string "neck_or_back_pain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "session_id"
    t.string "mattress_length"
    t.string "mattress_width"
    t.string "category"
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "address_addition"
    t.string "zip_code"
    t.string "city"
    t.string "phone"
    t.string "email"
    t.string "floor"
    t.string "elevator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "customer_id"
  end

end
