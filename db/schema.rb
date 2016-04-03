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

ActiveRecord::Schema.define(version: 20160403040200) do

  create_table "commissioning_forms", force: true do |t|
    t.string   "commissioning_date"
    t.string   "employee_name"
    t.string   "job"
    t.string   "customer_name"
    t.string   "job_type"
    t.integer  "system_size"
    t.string   "location"
    t.string   "physical_address"
    t.string   "mailing_address"
    t.string   "parcel_id"
    t.integer  "customer_phone"
    t.string   "customer_email"
    t.string   "permit"
    t.string   "installation_completed"
    t.string   "net_meter_installed"
    t.string   "wapa_account"
    t.text     "project_notes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inverters", force: true do |t|
    t.string   "inverter_type"
    t.integer  "qty_of_inverter"
    t.integer  "total_mods_to_inv"
    t.integer  "strings"
    t.integer  "avg_voltage_dc"
    t.string   "ocpd"
    t.integer  "load_center_size"
    t.integer  "lc_main_wire_gauge"
    t.integer  "kwh_total"
    t.integer  "commissioning_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mods", force: true do |t|
    t.string   "mod_type"
    t.integer  "qty"
    t.integer  "commissioning_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
