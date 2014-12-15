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

ActiveRecord::Schema.define(version: 20141215102051) do

  create_table "articles", force: true do |t|
    t.string   "titre"
    t.text     "corps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles_authors", id: false, force: true do |t|
    t.integer "article_id", null: false
    t.integer "author_id",  null: false
  end

  add_index "articles_authors", ["article_id", "author_id"], name: "index_articles_authors_on_article_id_and_author_id"

  create_table "authors", force: true do |t|
    t.string   "titre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string  "comment"
    t.integer "article_id"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id"

  create_table "dragon_eggs", force: true do |t|
    t.string   "race"
    t.integer  "count"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
