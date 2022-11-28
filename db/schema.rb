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

ActiveRecord::Schema[7.0].define(version: 2022_11_27_233131) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_students", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_students_on_course_id"
    t.index ["user_id"], name: "index_course_students_on_user_id"
  end

  create_table "course_teachers", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_teachers_on_course_id"
    t.index ["user_id"], name: "index_course_teachers_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_courses_on_code", unique: true
  end

  create_table "levels", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.text "text"
    t.text "text_source"
    t.text "image_url"
    t.text "image_source"
    t.text "video_url"
    t.text "video_source"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_levels_on_code", unique: true
    t.index ["course_id"], name: "index_levels_on_course_id"
  end

  create_table "question_answers", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "user_id", null: false
    t.string "answer", null: false
    t.datetime "answered_at", default: "2022-11-28 03:22:22", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_answers_on_question_id"
    t.index ["user_id"], name: "index_question_answers_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "level_id", null: false
    t.string "text", null: false
    t.string "correct_answer", null: false
    t.jsonb "options", null: false
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_questions_on_code", unique: true
    t.index ["level_id"], name: "index_questions_on_level_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "role", default: 0, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "course_students", "courses"
  add_foreign_key "course_students", "users"
  add_foreign_key "course_teachers", "courses"
  add_foreign_key "course_teachers", "users"
  add_foreign_key "levels", "courses"
  add_foreign_key "question_answers", "questions"
  add_foreign_key "question_answers", "users"
  add_foreign_key "questions", "levels"
end
