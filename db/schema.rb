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

ActiveRecord::Schema.define(version: 20131011001804) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clown_cars", force: true do |t|
    t.string  "color",    limit: 20, null: false
    t.integer "capacity",            null: false
  end

  create_table "clowns", force: true do |t|
    t.string  "name",         limit: 50, null: false
    t.integer "clown_car_id"
  end

  create_table "entries", force: true do |t|
    t.string "author"
    t.text   "photo"
    t.date   "post_date"
  end

  create_table "musicals", force: true do |t|
    t.string "title",    limit: 100, null: false
    t.string "year",     limit: 4,   null: false
    t.string "composer", limit: 100, null: false
  end

end
