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

ActiveRecord::Schema.define(version: 20170630105327) do

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
    t.string "size"
    t.string "neck_or_back_pain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
