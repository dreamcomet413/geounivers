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

ActiveRecord::Schema.define(version: 20170719074352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "institutions", force: :cascade do |t|
    t.integer "identify_id"
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "opeid"
    t.string "ipeds_unitid"
    t.string "web_address"
    t.integer "campus_id"
    t.string "campus_name"
    t.string "campus_address"
    t.string "campus_city"
    t.string "campus_state"
    t.string "campus_zip"
    t.string "campus_ipeds_unitid"
    t.string "accreditation_type"
    t.string "agency_name"
    t.string "agency_status"
    t.string "program_name"
    t.string "accreditation_status"
    t.string "accreditation_date_type"
    t.string "periods"
    t.string "last_action"
    t.datetime "action_date"
    t.string "justification"
    t.string "other_justification"
    t.string "justification_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

end
