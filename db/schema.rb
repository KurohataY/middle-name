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

ActiveRecord::Schema.define(version: 20190531044534) do

  create_table "commonnames", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "commonname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "middles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "mr_id"
    t.integer  "surname_id"
    t.string   "Lname"
    t.integer  "commonname_id"
    t.string   "Fname"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["commonname_id"], name: "index_middles_on_commonname_id", using: :btree
    t.index ["mr_id"], name: "index_middles_on_mr_id", using: :btree
    t.index ["surname_id"], name: "index_middles_on_surname_id", using: :btree
  end

  create_table "mrs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "mr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surnames", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "middles", "commonnames"
  add_foreign_key "middles", "mrs"
  add_foreign_key "middles", "surnames"
end
