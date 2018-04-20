class CreateAllTables < ActiveRecord::Migration[5.1]
  def change
   
  create_table "activities", force: :cascade do |t|
    t.string "act_name"
    t.text "act_about"
    t.string "act_address"
    t.float "act_lat"
    t.float "act_long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "act_date"
    t.integer "project_id"
    t.integer "team_id"
    t.index ["project_id"], name: "index_activities_on_project_id"
    t.index ["team_id"], name: "index_activities_on_team_id"
  end

  create_table "activity_attachments", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_activity_attachments_on_activity_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "coll_title"
    t.text "coll_about"
    t.bigint "project_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["item_id"], name: "index_collections_on_item_id"
    t.index ["project_id"], name: "index_collections_on_project_id"
  end

  create_table "item_attachments", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.bigint "iten_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["iten_id"], name: "index_item_attachments_on_iten_id"
  end

  create_table "itens", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "collection_id"
    t.index ["collection_id"], name: "index_itens_on_collection_id"
  end

  create_table "part", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "description"
    t.datetime "started_on"
    t.datetime "finished_on"
    t.datetime "aquired_on"
    t.integer "iten_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "part_attachments", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.bigint "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_part_attachments_on_part_id"
  end

  create_table "partner_attachments", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.bigint "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_partner_attachments_on_partner_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_code"
    t.string "part_seller"
    t.bigint "iten_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "part_finished"
    t.date "part_aquired"
    t.index ["iten_id"], name: "index_parts_on_iten_id"
  end

  create_table "productor_attachments", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.bigint "productor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["productor_id"], name: "index_productor_attachments_on_productor_id"
  end

  create_table "productors", force: :cascade do |t|
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

  create_table "professionals", force: :cascade do |t|
    t.string "prof_firstname"
    t.string "prof_lastname"
    t.string "prof_working_field"
    t.text "prof_about"
    t.string "prof_url"
    t.string "prof_social_one"
    t.string "prof_social_two"
    t.string "prof_social_three"
    t.string "prof_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.index ["team_id"], name: "index_professionals_on_team_id"
  end

  create_table "proj_attachments", force: :cascade do |t|
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "title"
  end

  create_table "projects", force: :cascade do |t|
    t.string "proj_title"
    t.text "proj_about"
    t.date "proj_startdate"
    t.date "proj_enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "proj_kind"
    t.json "projimages"
  end

  create_table "publication_attachments", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.bigint "publication_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "tm_name"
    t.text "tm_about"
    t.date "tm_joined_date"
    t.bigint "project_id"
    t.bigint "professional_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professional_id"], name: "index_teams_on_professional_id"
    t.index ["project_id"], name: "index_teams_on_project_id"
  end

  add_foreign_key "parts", "itens"
  end
end
