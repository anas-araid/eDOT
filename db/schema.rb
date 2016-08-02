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

ActiveRecord::Schema.define(version: 20160801123356) do

  create_table "community_health_workers", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "phone"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "health_center_id"
  end

  create_table "health_centers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "doctor_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "address"
    t.string   "gender"
    t.date     "birthdate"
    t.string   "phone"
    t.date     "starting_therapy_day"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "community_health_worker_id"
    t.integer  "health_center_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "community_health_worker_id"
    t.date     "date"
    t.text     "health_status"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
