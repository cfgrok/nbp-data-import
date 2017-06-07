# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170116055940) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_observations", force: :cascade do |t|
    t.integer "survey_id"
    t.integer "taxon_id"
    t.boolean "is_rare"
    t.string  "notes"
  end

  add_index "additional_observations", ["survey_id"], name: "index_additional_observations_on_survey_id", using: :btree
  add_index "additional_observations", ["taxon_id"], name: "index_additional_observations_on_taxon_id", using: :btree

  create_table "loops", force: :cascade do |t|
    t.string  "name"
    t.integer "site_id"
    t.boolean "is_active"
    t.integer "station_count"
  end

  add_index "loops", ["site_id"], name: "index_loops_on_site_id", using: :btree

  create_table "nest_codes", force: :cascade do |t|
    t.string  "name"
    t.string  "abbreviation"
    t.integer "code"
  end

  create_table "observations", force: :cascade do |t|
    t.integer "station_id"
    t.integer "taxon_id"
    t.integer "nest_code_id"
    t.integer "seen_count"
    t.integer "heard_count"
    t.integer "flyover_count"
    t.integer "legacy_id"
  end

  add_index "observations", ["nest_code_id"], name: "index_observations_on_nest_code_id", using: :btree
  add_index "observations", ["station_id"], name: "index_observations_on_station_id", using: :btree
  add_index "observations", ["taxon_id"], name: "index_observations_on_taxon_id", using: :btree

  create_table "observers", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "username"
    t.string  "password"
    t.boolean "is_active"
  end

  create_table "observers_sites", id: false, force: :cascade do |t|
    t.integer "site_id",     null: false
    t.integer "observer_id", null: false
  end

  add_index "observers_sites", ["observer_id", "site_id"], name: "index_observers_sites_on_observer_id_and_site_id", using: :btree
  add_index "observers_sites", ["observer_id"], name: "index_observers_sites_on_observer_id", using: :btree
  add_index "observers_sites", ["site_id"], name: "index_observers_sites_on_site_id", using: :btree

  create_table "observers_surveys", id: false, force: :cascade do |t|
    t.integer "survey_id",   null: false
    t.integer "observer_id", null: false
  end

  add_index "observers_surveys", ["observer_id", "survey_id"], name: "index_observers_surveys_on_observer_id_and_survey_id", using: :btree
  add_index "observers_surveys", ["observer_id"], name: "index_observers_surveys_on_observer_id", using: :btree
  add_index "observers_surveys", ["survey_id"], name: "index_observers_surveys_on_survey_id", using: :btree

  create_table "precipitations", force: :cascade do |t|
    t.string  "name"
    t.integer "sort_order"
  end

  create_table "sites", force: :cascade do |t|
    t.string  "name"
    t.boolean "is_active"
  end

  create_table "stations", force: :cascade do |t|
    t.integer "survey_id"
    t.integer "weather_id"
    t.integer "wind_id"
    t.integer "number"
    t.time    "start_time"
    t.integer "legacy_id"
    t.date    "date_entered"
    t.string  "notes"
    t.boolean "no_birds_seen"
    t.boolean "pishing"
  end

  add_index "stations", ["survey_id"], name: "index_stations_on_survey_id", using: :btree
  add_index "stations", ["weather_id"], name: "index_stations_on_weather_id", using: :btree
  add_index "stations", ["wind_id"], name: "index_stations_on_wind_id", using: :btree

  create_table "surveys", force: :cascade do |t|
    t.integer "loop_id"
    t.integer "precipitation_id"
    t.integer "weather_id"
    t.integer "wind_id"
    t.integer "year"
    t.integer "month"
    t.date    "survey_date"
    t.time    "start_time"
    t.time    "end_time"
    t.integer "walkers_count"
    t.integer "dogs_count"
    t.integer "off_leash_dogs_count"
    t.integer "other_count"
    t.string  "notes"
    t.integer "legacy_id"
  end

  add_index "surveys", ["loop_id"], name: "index_surveys_on_loop_id", using: :btree
  add_index "surveys", ["precipitation_id"], name: "index_surveys_on_precipitation_id", using: :btree
  add_index "surveys", ["weather_id"], name: "index_surveys_on_weather_id", using: :btree
  add_index "surveys", ["wind_id"], name: "index_surveys_on_wind_id", using: :btree

  create_table "taxons", force: :cascade do |t|
    t.string "common_name"
    t.string "banding_code"
  end

  create_table "weathers", force: :cascade do |t|
    t.string  "name"
    t.string  "code"
    t.integer "sort_order"
  end

  create_table "winds", force: :cascade do |t|
    t.string  "name"
    t.string  "code"
    t.integer "sort_order"
  end

  add_foreign_key "additional_observations", "surveys", name: "observations_survey_id_fkey"
  add_foreign_key "additional_observations", "taxons", name: "observations_taxon_id_fkey"
  add_foreign_key "loops", "sites", name: "loops_site_id_fkey"
  add_foreign_key "observations", "nest_codes", name: "observations_nest_code_id_fkey"
  add_foreign_key "observations", "stations", name: "observations_station_id_fkey"
  add_foreign_key "observations", "taxons", name: "observations_taxon_id_fkey"
  add_foreign_key "observers_sites", "observers", name: "sites_observers_observer_id_fkey"
  add_foreign_key "observers_sites", "sites", name: "sites_observers_site_id_fkey"
  add_foreign_key "observers_surveys", "observers", name: "surveys_observers_observer_id_fkey"
  add_foreign_key "observers_surveys", "surveys", name: "surveys_observers_survey_id_fkey"
  add_foreign_key "stations", "surveys", name: "stations_survey_id_fkey"
  add_foreign_key "stations", "weathers", name: "stations_weather_id_fkey"
  add_foreign_key "stations", "winds", name: "stations_wind_id_fkey"
  add_foreign_key "surveys", "loops", name: "surveys_loop_id_fkey"
  add_foreign_key "surveys", "precipitations", name: "surveys_precipitation_id_fkey"
  add_foreign_key "surveys", "weathers", name: "surveys_weather_id_fkey"
  add_foreign_key "surveys", "winds", name: "surveys_wind_id_fkey"
end
