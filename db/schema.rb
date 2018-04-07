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

ActiveRecord::Schema.define(version: 20180407003308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "coll_title"
    t.string "coll_cover"
    t.text "coll_about"
    t.bigint "project_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_collections_on_item_id"
    t.index ["project_id"], name: "index_collections_on_project_id"
  end

  create_table "productors", force: :cascade do |t|
    t.json "prod_pics"
    t.string "prod_name"
    t.text "prod_description"
    t.string "prod_url"
    t.string "prod_address"
    t.float "prod_lat"
    t.float "prod_long"
    t.bigint "project_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_productors_on_item_id"
    t.index ["project_id"], name: "index_productors_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "proj_title"
    t.json "proj_pics"
    t.text "proj_about"
    t.date "proj_startdate"
    t.date "proj_enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "tm_pic"
    t.string "tm_name"
    t.text "tm_about"
    t.date "tm_joined_date"
    t.bigint "project_id"
    t.bigint "professional_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_teams_on_activity_id"
    t.index ["professional_id"], name: "index_teams_on_professional_id"
    t.index ["project_id"], name: "index_teams_on_project_id"
  end

end
