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

ActiveRecord::Schema.define(version: 2019_06_21_140354) do

  create_table "equivalent_continuous_sound_levels", force: :cascade do |t|
    t.float "laeq"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sonometer_records", force: :cascade do |t|
    t.decimal "spl", precision: 4, scale: 1
    t.string "filter", limit: 1
    t.boolean "max_mode", default: false
    t.datetime "measured_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["measured_at"], name: "index_sonometer_records_on_measured_at", unique: true
  end

end
