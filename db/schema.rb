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

ActiveRecord::Schema.define(version: 2021_01_22_142218) do

  create_table "apply_posts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "candidate_name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "apply_date"
    t.string "apply_where"
    t.integer "age"
    t.string "mail"
    t.datetime "interview"
    t.string "phonenumber"
    t.string "passfail"
    t.string "course"
    t.string "tantou"
    t.string "important"
    t.string "driver_license"
    t.string "resident_card"
    t.string "parking"
    t.string "contract"
    t.string "name_change"
    t.string "vehicle_inspection"
    t.string "car_to_driver"
  end

  create_table "car_posts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "car_number"
    t.string "car_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "operation"
    t.string "driver"
    t.string "car_course"
    t.string "gensan"
    t.string "work_or_not"
    t.integer "car_to_driver"
    t.integer "turn_car"
  end

  create_table "homes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.text "content"
  end

  create_table "offers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "offer_start_day"
    t.string "offer_place"
    t.string "offer_course"
    t.integer "offer_howmany"
    t.string "offer_tantou"
  end

  create_table "place_posts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "place_name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
