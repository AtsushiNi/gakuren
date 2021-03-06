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

ActiveRecord::Schema.define(version: 2019_04_08_071547) do

  create_table "club_members", force: :cascade do |t|
    t.integer "college_id"
    t.string "name"
    t.integer "addmission_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_club_members_on_college_id"
  end

  create_table "colleges", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "league"
    t.integer "players_num"
    t.string "captain"
    t.string "competent"
    t.string "prefecture"
    t.boolean "men"
    t.string "initial_name"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "singles_tournament_id"
    t.integer "young"
    t.integer "old"
    t.integer "winner_num"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "round"
    t.integer "court"
    t.integer "turn"
    t.string "score"
    t.string "status"
    t.time "start_time"
    t.time "finish_time"
    t.boolean "ready"
    t.index ["singles_tournament_id"], name: "index_matches_on_singles_tournament_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "addmission_year"
    t.string "college"
    t.string "post"
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.json "pdfs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "visible"
  end

  create_table "rankings", force: :cascade do |t|
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tournaments"
  end

  create_table "roots", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "singles_players", force: :cascade do |t|
    t.string "name"
    t.string "college"
    t.integer "number"
    t.integer "singles_tournament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["singles_tournament_id"], name: "index_singles_players_on_singles_tournament_id"
  end

  create_table "singles_tournaments", force: :cascade do |t|
    t.string "name"
    t.integer "draw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "courts"
    t.datetime "entry_start"
    t.datetime "entry_end"
    t.text "entry_list"
    t.text "seed_players"
  end

end
