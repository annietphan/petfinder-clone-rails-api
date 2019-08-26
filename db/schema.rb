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

ActiveRecord::Schema.define(version: 2019_08_26_174507) do

  create_table "pets", force: :cascade do |t|
    t.integer "shelter_id"
    t.string "name"
    t.string "breed"
    t.string "gender"
    t.string "size"
    t.string "age"
    t.boolean "vaccinated", default: true
    t.boolean "house_trained", default: true
    t.boolean "good_with_dogs", default: true
    t.boolean "good_with_cats", default: true
    t.boolean "good_with_kids", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kind"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "email"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
