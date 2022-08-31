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

ActiveRecord::Schema[7.0].define(version: 2022_08_21_153404) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "neighborhood"
    t.string "city"
    t.string "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "field_id", null: false
    t.index ["field_id"], name: "index_addresses_on_field_id"
  end

  create_table "baptisms", force: :cascade do |t|
    t.date "baptism_date"
    t.string "field_registration"
    t.boolean "age_big_than_ten"
    t.boolean "has_group"
    t.integer "shirt_size"
    t.string "baptism_pref_field"
    t.text "comment"
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_baptisms_on_person_id"
  end

  create_table "checkins", force: :cascade do |t|
    t.boolean "baptized"
    t.date "baptism"
    t.bigint "field_id", null: false
    t.boolean "want_serve"
    t.string "ministry_name"
    t.bigint "group_id", null: false
    t.text "obsevation"
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_checkins_on_field_id"
    t.index ["group_id"], name: "index_checkins_on_group_id"
    t.index ["person_id"], name: "index_checkins_on_person_id"
  end

  create_table "consolidates", force: :cascade do |t|
    t.integer "status"
    t.integer "field"
    t.date "meeting_date"
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_consolidates_on_person_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.date "meeting_day"
    t.string "leader"
    t.string "co_leader"
    t.string "coordinator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "field_id", null: false
    t.index ["field_id"], name: "index_groups_on_field_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "cell_phone"
    t.string "phone"
    t.integer "age"
    t.boolean "is_member"
    t.integer "gender"
    t.integer "marital_status"
    t.string "profession"
    t.string "cep"
    t.string "neighborhood_preference"
    t.string "day_preference"
    t.text "comments"
    t.string "registration_at"
    t.bigint "field_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_people_on_field_id"
  end

  add_foreign_key "addresses", "fields"
  add_foreign_key "baptisms", "people"
  add_foreign_key "checkins", "fields"
  add_foreign_key "checkins", "groups"
  add_foreign_key "checkins", "people"
  add_foreign_key "consolidates", "people"
  add_foreign_key "groups", "fields"
  add_foreign_key "people", "fields"
end
