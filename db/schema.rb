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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110202062925) do

  create_table "matchups", :force => true do |t|
    t.integer  "race_id",            :null => false
    t.integer  "skier_id",           :null => false
    t.integer  "team_id",            :null => false
    t.integer  "oppenent_id",        :null => false
    t.float    "blue_time",          :null => false
    t.float    "red_time",           :null => false
    t.float    "oppenent_blue_time"
    t.float    "oppenent_red_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.integer  "week",       :null => false
    t.string   "day",        :null => false
    t.string   "location",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "races", ["week", "day", "location"], :name => "index_races_on_week_and_day_and_location", :unique => true

  create_table "skiers", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "number",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["name"], :name => "index_teams_on_name", :unique => true

end
