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

ActiveRecord::Schema.define(:version => 20110530082805) do

  create_table "bet_histories", :force => true do |t|
    t.integer  "user_id"
    t.integer  "bet_id"
    t.integer  "point"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bets", :force => true do |t|
    t.string   "title",                  :limit => 120
    t.string   "detail",                 :limit => 240
    t.integer  "positive",                              :default => 0
    t.integer  "negative",                              :default => 0
    t.datetime "expire"
    t.string   "bet_photo_file_name"
    t.string   "bet_photo_content_type"
    t.integer  "bet_photo_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cat",                    :limit => 10,  :default => "unsorted"
    t.integer  "user_id"
    t.integer  "points",                                :default => 0
  end

  create_table "comments", :force => true do |t|
    t.integer  "bet_id"
    t.integer  "user_id"
    t.string   "user_name",      :limit => 20
    t.string   "user_photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment",        :limit => 120
  end

  create_table "deal_histories", :force => true do |t|
    t.integer  "bet_id"
    t.string   "result",     :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "expire"
  end

  create_table "products", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referee_histories", :force => true do |t|
    t.integer  "bet_id"
    t.integer  "user_id"
    t.string   "decision",   :limit => 10,  :default => "abstain"
    t.string   "reason",     :limit => 120
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                    :limit => 10
    t.integer  "point"
    t.string   "user_photo_file_name"
    t.string   "user_photo_content_type"
    t.integer  "user_photo_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                   :limit => 20
    t.string   "persistence_token"
    t.string   "crypted_password"
  end

end
