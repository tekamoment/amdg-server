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

ActiveRecord::Schema.define(version: 20160519162707) do

  create_table "agents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.integer  "client_id"
  end

  add_index "agents", ["client_id"], name: "index_agents_on_client_id"
  add_index "agents", ["email"], name: "index_agents_on_email", unique: true

  create_table "clients", force: :cascade do |t|
    t.string   "client_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.datetime "date_delivered"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "supplier_id"
    t.integer  "warehouse_staffer_id"
  end

  add_index "deliveries", ["supplier_id"], name: "index_deliveries_on_supplier_id"
  add_index "deliveries", ["warehouse_staffer_id"], name: "index_deliveries_on_warehouse_staffer_id"

  create_table "discounts", force: :cascade do |t|
    t.float    "discount_rate"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.datetime "date_issued"
    t.integer  "agent_id"
    t.integer  "warehouse_staffer_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "inventories", ["agent_id"], name: "index_inventories_on_agent_id"
  add_index "inventories", ["warehouse_staffer_id"], name: "index_inventories_on_warehouse_staffer_id"

  create_table "item_models", force: :cascade do |t|
    t.string   "description"
    t.float    "srp"
    t.integer  "quantity"
    t.float    "cost"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "item_type_id"
  end

  add_index "item_models", ["item_type_id"], name: "index_item_models_on_item_type_id"

  create_table "item_types", force: :cascade do |t|
    t.string   "itemtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "managers", ["email"], name: "index_managers_on_email", unique: true

  create_table "suppliers", force: :cascade do |t|
    t.string   "supplier_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "warehouse_staffers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "warehouse_staffers", ["email"], name: "index_warehouse_staffers_on_email", unique: true

end
