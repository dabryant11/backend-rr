# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_18_165908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.integer "legislator_id"
    t.integer "committee_id"
    t.string "title"
    t.string "status"
    t.string "sponsor"
    t.string "co_sponsor"
    t.string "votes"
    t.string "bill_number"
    t.string "committee"
    t.string "subject"
    t.string "chamber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "committees", force: :cascade do |t|
    t.string "name"
    t.string "chair"
    t.string "vice_chair"
    t.string "ranking_member"
    t.string "members"
    t.string "chamber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legislators", force: :cascade do |t|
    t.string "name"
    t.string "district"
    t.string "committees"
    t.string "party"
    t.string "email"
    t.string "image"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "minority_businesses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "rating"
    t.string "image"
    t.string "hours"
    t.string "website"
    t.string "twitter"
    t.string "ig"
    t.string "facebook"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "state_agencies", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "director"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "state_budgets", force: :cascade do |t|
    t.string "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_legislators", force: :cascade do |t|
    t.integer "user_id"
    t.integer "legislator_id"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "district"
    t.string "image"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
