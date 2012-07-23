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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120720134552) do

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "login",      :limit => 30,                    :null => false
    t.string   "pass",       :limit => 30,                    :null => false
    t.string   "salt",                                        :null => false
    t.string   "vorname"
    t.string   "nachname"
    t.string   "benutzernr", :limit => 20,                    :null => false
    t.string   "email"
    t.integer  "status",                   :default => 0,     :null => false
    t.boolean  "admin",                    :default => false, :null => false
    t.text     "bemerkung"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  add_index "users", ["benutzernr"], :name => "index_users_on_benutzernr", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["login"], :name => "index_users_on_login", :unique => true
  add_index "users", ["nachname"], :name => "index_users_on_nachname"
  add_index "users", ["vorname"], :name => "index_users_on_vorname"

end
