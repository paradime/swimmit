# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160301023019) do

  create_table "drills", force: :cascade do |t|
    t.string   "category"
    t.text     "note"
    t.integer  "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "drills", ["workout_id"], name: "index_drills_on_workout_id"

  create_table "exercises", force: :cascade do |t|
    t.integer  "distance",    null: false
    t.integer  "repetitions", null: false
    t.integer  "rest"
    t.integer  "interval"
    t.string   "stroke",      null: false
    t.integer  "drill_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "exercises", ["drill_id"], name: "index_exercises_on_drill_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.boolean  "admin",                  default: false
    t.boolean  "coach",                  default: false
    t.boolean  "swimmer",                default: true
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "workouts", force: :cascade do |t|
    t.text     "description"
    t.string   "name",        null: false
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "workouts", ["user_id"], name: "index_workouts_on_user_id"

end
