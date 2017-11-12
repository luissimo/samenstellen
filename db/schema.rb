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

ActiveRecord::Schema.define(version: 20171112124551) do

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

  create_table "contact_forms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "about"
    t.string "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "session_id"
    t.string "payment_method"
  end

  create_table "double_mattress_ones", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.string "email"
    t.string "weight"
    t.integer "length"
    t.string "sleep_position"
    t.string "body_shape"
    t.string "warm_sleeping"
    t.string "neck_or_back_pain"
    t.string "session_id"
    t.string "mattress_length"
    t.string "mattress_width"
    t.string "category"
    t.string "comfort"
    t.string "diseases"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "chassis"
  end

  create_table "double_mattress_twos", force: :cascade do |t|
    t.string "name"
    t.string "name2"
    t.string "gender"
    t.string "gender2"
    t.integer "age"
    t.integer "age2"
    t.string "email"
    t.string "weight"
    t.string "weight2"
    t.integer "length"
    t.integer "length2"
    t.string "sleep_position"
    t.string "sleep_position2"
    t.string "body_shape"
    t.string "body_shape2"
    t.string "warm_sleeping"
    t.string "warm_sleeping2"
    t.string "neck_or_back_pain"
    t.string "neck_or_back_pain2"
    t.string "session_id"
    t.string "mattress_length"
    t.string "mattress_width"
    t.string "category"
    t.string "comfort"
    t.string "comfort2"
    t.string "diseases"
    t.string "diseases2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "chassis"
    t.string "separation"
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
    t.string "neck_or_back_pain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "session_id"
    t.string "mattress_length"
    t.string "mattress_width"
    t.string "category"
    t.string "comfort"
    t.string "diseases"
    t.string "chassis"
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
