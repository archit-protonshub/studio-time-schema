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

ActiveRecord::Schema.define(version: 20190905155512) do

  create_table "activities", force: :cascade do |t|
    t.string "response_rate"
    t.string "response_time"
    t.integer "daily_views"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "booking_breakdowns", force: :cascade do |t|
    t.float "price_per_hour"
    t.float "studio_fees"
    t.integer "booking_id"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_breakdowns_on_booking_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "studio_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.integer "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_payments_on_country_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "file"
    t.string "photoable_type"
    t.integer "photoable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "reviewable_type"
    t.integer "reviewable_id"
    t.string "description"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_accounts", force: :cascade do |t|
    t.string "provider_name"
    t.string "provider_url"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studio_addresses", force: :cascade do |t|
    t.string "address"
    t.string "street"
    t.string "city"
    t.integer "country_id"
    t.integer "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_studio_addresses_on_country_id"
    t.index ["studio_id"], name: "index_studio_addresses_on_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "detail"
    t.float "min_booking"
    t.string "past_clients"
    t.string "audio_samples"
    t.string "amenities"
    t.string "main_equipments"
    t.string "rules"
    t.float "price"
    t.boolean "audio_engineer_included"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subscription_id"
    t.boolean "is_verified"
    t.index ["id"], name: "index_studios_on_id", unique: true
    t.index ["subscription_id"], name: "index_studios_on_subscription_id"
  end

  create_table "studios_types", force: :cascade do |t|
    t.integer "studio_id"
    t.integer "type_id"
  end

  create_table "subscription_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "name"
    t.integer "subscription_type_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "encrypted_password"
    t.text "phone"
    t.text "about_me"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_users_on_id"
  end

end
