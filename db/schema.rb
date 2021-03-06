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

ActiveRecord::Schema.define(version: 2019_01_18_223439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "fuzzystrmatch"
  enable_extension "pg_trgm"
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "raca"
    t.string "vacinacao"
    t.boolean "sexo"
    t.string "descricao"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_animals_on_user_id"
  end

  create_table "calendars", force: :cascade do |t|
    t.date "date"
    t.datetime "horario"
    t.boolean "periodo"
    t.bigint "petshop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petshop_id"], name: "index_calendars_on_petshop_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "petshop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petshop_id"], name: "index_categories_on_petshop_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "discountable_type"
    t.bigint "discountable_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discountable_type", "discountable_id"], name: "index_discounts_on_discountable_type_and_discountable_id"
    t.index ["user_id"], name: "index_discounts_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.string "favorite_name"
    t.bigint "petshop_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petshop_id"], name: "index_favorites_on_petshop_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "petshops", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.string "phone"
    t.string "cep"
    t.string "estado"
    t.string "cidade"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_petshops_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "plan_selects", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_plan_selects_on_plan_id"
    t.index ["user_id"], name: "index_plan_selects_on_user_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "plan_name"
    t.integer "plan_price"
    t.string "plan_status"
    t.string "plan_periodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "last_name"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "animals", "users"
  add_foreign_key "calendars", "petshops"
  add_foreign_key "categories", "petshops"
  add_foreign_key "discounts", "users"
  add_foreign_key "favorites", "petshops"
  add_foreign_key "favorites", "users"
  add_foreign_key "petshops", "users"
  add_foreign_key "plan_selects", "plans"
  add_foreign_key "plan_selects", "users"
end
