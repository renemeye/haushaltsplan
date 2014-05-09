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

ActiveRecord::Schema.define(version: 20140508065609) do

  create_table "budget_entries", force: true do |t|
    t.string   "name"
    t.boolean  "income"
    t.float    "value_in_euro"
    t.integer  "parent_budget_entry_id"
    t.integer  "budget_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  add_index "budget_entries", ["ancestry"], name: "index_budget_entries_on_ancestry"
  add_index "budget_entries", ["budget_id"], name: "index_budget_entries_on_budget_id"

  create_table "budgets", force: true do |t|
    t.string   "name"
    t.text     "text"
    t.boolean  "published"
    t.date     "agreed_on"
    t.string   "agreed_protocol_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end