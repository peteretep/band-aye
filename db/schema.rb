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

ActiveRecord::Schema.define(version: 2019_02_02_223543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gigs", force: :cascade do |t|
    t.string "title"
    t.string "where"
    t.datetime "when"
    t.string "band_contact"
    t.string "event_contact"
    t.boolean "confirmed"
    t.text "about"
    t.bigint "gig_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "high_payer"
    t.boolean "charity"
    t.index ["gig_admin_id"], name: "index_gigs_on_gig_admin_id"
  end

  create_table "gigs_members", id: false, force: :cascade do |t|
    t.bigint "gig_id", null: false
    t.bigint "member_id", null: false
    t.index ["gig_id", "member_id"], name: "index_gigs_members_on_gig_id_and_member_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "family"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.boolean "admin", default: false
    t.boolean "gig_admin", default: false
    t.boolean "ordinary_member", default: true
    t.bigint "instrument_id"
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["instrument_id"], name: "index_members_on_instrument_id"
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  add_foreign_key "members", "instruments"
end
