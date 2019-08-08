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

ActiveRecord::Schema.define(version: 2019_08_08_010036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communes", force: :cascade do |t|
    t.string "name"
    t.integer "province_id"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cod_treasury"
    t.integer "conara_sii"
  end

  create_table "consumptions", force: :cascade do |t|
    t.bigint "service_account_id"
    t.bigint "realty_id"
    t.string "date"
    t.string "start_reading"
    t.string "final_reading"
    t.float "unit_consumption"
    t.integer "consumption_amount"
    t.integer "total_debt"
    t.string "agreement"
    t.integer "unpaid_months"
    t.string "last_payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["realty_id"], name: "index_consumptions_on_realty_id"
    t.index ["service_account_id"], name: "index_consumptions_on_service_account_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "realties", force: :cascade do |t|
    t.integer "commune_id"
    t.string "street"
    t.integer "number_unit"
    t.string "unit_estate"
    t.integer "street_type_id"
    t.string "population_villa"
    t.integer "condominium_id"
    t.integer "property_type"
    t.integer "apple"
    t.integer "property"
    t.text "name_realty"
    t.integer "latitude"
    t.integer "longitude"
    t.float "mt2_land"
    t.float "mt2_built"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_region"
  end

  create_table "service_accounts", force: :cascade do |t|
    t.integer "light"
    t.integer "water"
    t.integer "gas"
    t.integer "common_expense"
    t.integer "contribution"
    t.integer "garbage"
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
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consumptions", "realties"
  add_foreign_key "consumptions", "service_accounts"
end
