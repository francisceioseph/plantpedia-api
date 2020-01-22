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

ActiveRecord::Schema.define(version: 2020_01_22_113913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

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

  create_table "dimensions", force: :cascade do |t|
    t.float "ft"
    t.float "cm"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flowers", force: :cascade do |t|
    t.string "conspicuous"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foliages", force: :cascade do |t|
    t.string "texture"
    t.string "porosity_winter"
    t.string "porosity_summer"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fruit_or_seeds", force: :cascade do |t|
    t.string "seed_persistence"
    t.string "seed_period_begin"
    t.string "seed_period_end"
    t.string "seed_abundance"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "growths", force: :cascade do |t|
    t.string "shade_tolerance"
    t.string "salinity_tolerance"
    t.float "ph_minimum"
    t.float "ph_maximum"
    t.string "moisture_use"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "scientific_name"
    t.string "common_name"
    t.string "native_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "species_id"
  end

  create_table "propagations", force: :cascade do |t|
    t.string "tubers"
    t.string "sprigs"
    t.string "sod"
    t.string "seed"
    t.string "cuttings"
    t.string "corms"
    t.string "container"
    t.string "bulbs"
    t.string "bare_root"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seeds", force: :cascade do |t|
    t.string "vegetative_spread_rate"
    t.string "small_grain"
    t.string "seeds_per_kilo"
    t.string "seedling_vigor"
    t.string "seed_spread_rate"
    t.string "commercial_availability"
    t.string "bloom_period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "duration"
    t.string "common_name"
    t.string "year"
    t.string "type"
    t.string "scientific_name"
    t.string "native_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specifications", force: :cascade do |t|
    t.string "toxicity"
    t.string "shape_and_orientation"
    t.string "nitrogen_fixation"
    t.string "low_growing_grass"
    t.string "lifespan"
    t.string "leaf_retention"
    t.string "growth_rate"
    t.string "growth_period"
    t.string "growth_habit"
    t.string "growth_form"
    t.string "fire_resistance"
    t.string "fall_conspicuous"
    t.string "coppiece_potential"
    t.string "bloat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "temperatures", force: :cascade do |t|
    t.float "deg_f"
    t.float "deg_c"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
