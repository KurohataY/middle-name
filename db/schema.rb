# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_31_044534) do

  create_table "commonnames", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "commonname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "middles", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "mr_id"
    t.string "mr"
    t.integer "surname_id"
    t.string "surname"
    t.string "Lname"
    t.integer "commonname_id"
    t.string "commonname"
    t.string "Fname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "timestamps"
    t.index ["commonname_id"], name: "index_middles_on_commonname_id"
    t.index ["mr_id"], name: "index_middles_on_mr_id"
    t.index ["surname_id"], name: "index_middles_on_surname_id"
    t.index ["user_id"], name: "index_middles_on_user_id"
  end

  create_table "mrs", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "mr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surnames", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "middles", "commonnames"
  add_foreign_key "middles", "mrs"
  add_foreign_key "middles", "surnames"
  add_foreign_key "middles", "users"
end
