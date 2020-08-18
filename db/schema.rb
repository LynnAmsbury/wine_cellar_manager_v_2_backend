ActiveRecord::Schema.define(version: 2020_08_18_162643) do

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "variety_list_items", force: :cascade do |t|
    t.integer "wine_index_list_item_id", null: false
    t.string "variety", null: false
    t.string "region", null: false
    t.string "producer", null: false
    t.integer "vintage", null: false
    t.integer "number_in_collection", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wine_index_list_item_id"], name: "index_variety_list_items_on_wine_index_list_item_id"
  end

  create_table "wine_index_list_items", force: :cascade do |t|
    t.string "name", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_wine_index_list_items_on_user_id"
  end

  add_foreign_key "variety_list_items", "wine_index_list_items"
  add_foreign_key "wine_index_list_items", "users"
end
