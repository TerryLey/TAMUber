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

ActiveRecord::Schema.define(version: 2019_11_30_012026) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.boolean "isAvailable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Email"
    t.string "UIN"
    t.string "license"
    t.string "tel"
    t.string "address"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "end"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "driver_id"
    t.index ["driver_id"], name: "index_events_on_driver_id"
  end

  create_table "onduties", force: :cascade do |t|
    t.string "driverName"
    t.string "plateNumber"
    t.string "studentName"
    t.string "studentId"
    t.float "vehicleLat"
    t.float "vehicleLng"
    t.float "startLat"
    t.float "startLng"
    t.float "endLat"
    t.float "endLng"
    t.boolean "isFinished"
    t.boolean "isAlert"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "name"
    t.string "studentId"
    t.float "startLat"
    t.float "startLng"
    t.float "endLat"
    t.float "endLng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "admin", default: false
    t.string "license"
    t.string "tel"
    t.string "address"
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.boolean "isAvailable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tire_level"
    t.string "battery_level"
    t.string "fill_rate"
  end

end
