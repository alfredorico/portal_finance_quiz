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

ActiveRecord::Schema.define(version: 20170725033728) do

  create_table "answer_choices", force: :cascade do |t|
    t.string "code"
    t.text "answer", null: false
    t.boolean "correct", default: false
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answer_choices_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "question", null: false
    t.integer "score", default: 1
    t.integer "order"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_replies", force: :cascade do |t|
    t.integer "question_id"
    t.text "selected_answers"
    t.boolean "locked", default: false
    t.boolean "correct", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quiz_id"
    t.index ["question_id"], name: "index_quiz_replies_on_question_id"
  end

  create_table "quizzes", id: :string, force: :cascade do |t|
    t.integer "total_score", default: 0
    t.integer "correct_answers_counting", default: 0
    t.integer "failed_answers_counting", default: 0
    t.boolean "terminated", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "sqlite_autoindex_quizzes_1", unique: true
  end

end
