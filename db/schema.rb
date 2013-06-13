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

ActiveRecord::Schema.define(:version => 20130530210212) do

  create_table "answers", :force => true do |t|
    t.string  "a"
    t.integer "people_id"
    t.integer "question_id"
  end

  create_table "people", :force => true do |t|
    t.string "name"
    t.string "title"
    t.string "image"
    t.string "image_url"
    t.string "imagelink"
  end

  create_table "questions", :force => true do |t|
    t.integer "people_id"
    t.integer "user_id"
    t.text    "q"
    t.integer "votecount"
  end

  create_table "users", :force => true do |t|
    t.string "name"
    t.string "password_digest"
  end

  create_table "votes", :force => true do |t|
    t.boolean "vote_for"
    t.integer "question_id"
    t.integer "user_id"
  end

end
