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

ActiveRecord::Schema.define(version: 20180509134839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "act_name"
    t.text "act_about"
    t.string "act_address"
    t.float "act_lat"
    t.float "act_long"
    t.date "act_date"
    t.bigint "act_project_id"
    t.bigint "act_team_id"
    t.index ["act_project_id"], name: "index_activities_on_project_id"
    t.index ["act_team_id"], name: "index_activities_on_team_id"
  end

  create_table "activity_attachments", force: :cascade do |t|
    t.string "image"
    t.bigint "activity_id"
    t.index ["activity_id"], name: "index_activity_attachments_on_activity_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "coll_cover"
    t.string "coll_title"
    t.text "coll_about"
    t.bigint "coll_project_id"
    t.bigint "coll_item_id"
    t.index ["coll_item_id"], name: "index_collections_on_item_id"
    t.index ["coll_project_id"], name: "index_collections_on_project_id"
  end

  create_table "item_attachments", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.bigint "iten_id"
    t.index ["iten_id"], name: "index_item_attachments_on_iten_id"
  end

  create_table "itens", force: :cascade do |t|
    t.string "it_name"
    t.text "it_description"
    t.bigint "it_collection_id"
    t.index ["it_collection_id"], name: "index_itens_on_collection_id"
  end

  create_table "part_attachments", force: :cascade do |t|
    t.string "image"
    t.bigint "part_id"
    t.index ["part_id"], name: "index_part_attachments_on_part_id"
  end

  create_table "partner_attachments", force: :cascade do |t|
    t.string "image"
    t.bigint "partner_id"
    t.index ["partner_id"], name: "index_partner_attachments_on_partner_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "prtn_name"
    t.text "prtn_description"
    t.string "prtn_url"
    t.integer "prtn_project_id"
    t.index ["prtn_project_id"], name: "index_partner_on_project_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_code"
    t.string "part_seller"
    t.text "part_description"
    t.bigint "part_iten_id"
    t.date "part_started"
    t.date "part_finished"
    t.date "part_aquired"
    t.index ["part_iten_id"], name: "index_parts_on_iten_id"
  end

  create_table "productor_attachments", force: :cascade do |t|
    t.string "image"
    t.bigint "productor_id"
    t.index ["productor_id"], name: "index_productor_attachments_on_productor_id"
  end

  create_table "productors", force: :cascade do |t|
    t.string "prod_name"
    t.text "prod_description"
    t.string "prod_url"
    t.string "prod_address"
    t.float "prod_lat"
    t.float "prod_long"
    t.bigint "prod_project_id"
    t.bigint "prod_item_id"
    t.index ["prod_item_id"], name: "index_productors_on_item_id"
    t.index ["prod_project_id"], name: "index_productors_on_project_id"
  end

  create_table "professionals", force: :cascade do |t|
    t.string "prof_image"
    t.string "prof_firstname"
    t.string "prof_lastname"
    t.string "prof_working_field"
    t.text "prof_about"
    t.string "prof_url"
    t.string "prof_social_one"
    t.string "prof_social_two"
    t.string "prof_social_three"
    t.string "prof_email"
    t.bigint "prof_team_id"
    t.index ["prof_team_id"], name: "index_professionals_on_team_id"
  end

  create_table "proj_attachments", force: :cascade do |t|
    t.string "image"
    t.integer "project_id"
    t.index ["project_id"], name: "index_proj_attachments_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "proj_title"
    t.text "proj_about"
    t.date "proj_startdate"
    t.date "proj_enddate"
    t.string "proj_kind"
    t.string "proj_cover"
    t.integer "proj_team_id"
    t.index ["proj_team_id"], name: "index_projects_on_proj_team_id"
  end

  create_table "publication_attachments", force: :cascade do |t|
    t.string "image"
    t.bigint "publication_id"
    t.index ["publication_id"], name: "index_publication_attachments_on_publication_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string "pub_title"
    t.json "pub_authors"
    t.text "pub_description"
    t.string "pub_keywords"
    t.datetime "pub_date"
    t.string "pub_editor"
    t.string "pub_city"
    t.string "pub_country"
  end

  create_table "teams", force: :cascade do |t|
    t.string "tm_cover"
    t.string "tm_name"
    t.text "tm_about"
    t.date "tm_joined_date"
    t.bigint "tm_project_id"
    t.bigint "tm_professional_id"
    t.integer "tm_collection_id"
    t.index ["tm_collection_id"], name: "index_teams_on_tm_collection_id"
    t.index ["tm_professional_id"], name: "index_teams_on_professional_id"
    t.index ["tm_project_id"], name: "index_teams_on_project_id"
  end

end
