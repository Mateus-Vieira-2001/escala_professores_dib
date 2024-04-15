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

ActiveRecord::Schema[7.1].define(version: 2024_04_15_192634) do
  create_table "assistant_registrations", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.string "class_by_age"
    t.boolean "is_teacher_too"
    t.string "disponibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "child_registrations", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.string "guardian"
    t.string "disease"
    t.string "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaders_registrations", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.string "disponibility"
    t.boolean "is_teacher_too"
    t.boolean "is_assistant_too"
    t.string "class_by_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string "name"
    t.string "type_volunteer"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_registrations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "disponibility"
    t.boolean "is_assistant_too"
    t.string "class_by_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
