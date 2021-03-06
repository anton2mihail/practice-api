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

ActiveRecord::Schema.define(version: 2021_04_30_012451) do

  create_table "colleges", primary_key: "college_id", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exam_windows", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "exam_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.index ["exam_id"], name: "index_exam_windows_on_exam_id"
    t.index ["user_id"], name: "index_exam_windows_on_user_id"
  end

  create_table "exams", primary_key: "exam_id", force: :cascade do |t|
    t.integer "college_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["college_id"], name: "index_exams_on_college_id"
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.integer "college_number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["college_number"], name: "index_users_on_college_number"
  end

  add_foreign_key "exams", "colleges", primary_key: "college_id"
  add_foreign_key "users", "colleges", column: "college_number", primary_key: "college_id"
end
