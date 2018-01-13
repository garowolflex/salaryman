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

ActiveRecord::Schema.define(version: 20180113071222) do

  create_table "working_days", force: :cascade do |t|
    t.date "date", null: false
    t.datetime "started_at"
    t.datetime "finished_at"
    t.integer "rest_time"
    t.integer "deduction_time"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date"], name: "index_working_days_on_date"
  end

  create_table "works", force: :cascade do |t|
    t.integer "working_day_id"
    t.integer "category"
    t.string "order_code"
    t.string "operation_code"
    t.integer "time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["working_day_id"], name: "index_works_on_working_day_id"
  end

end
