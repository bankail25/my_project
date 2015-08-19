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

ActiveRecord::Schema.define(version: 20150819174236) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "keywords",    limit: 255
    t.string   "description", limit: 255
    t.string   "subject",     limit: 255
    t.string   "lenguaje",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "slug",        limit: 255
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "has_categories", force: :cascade do |t|
    t.integer  "producto_id", limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "has_categories", ["category_id"], name: "index_has_categories_on_category_id", using: :btree
  add_index "has_categories", ["producto_id"], name: "index_has_categories_on_producto_id", using: :btree

  create_table "productos", force: :cascade do |t|
    t.string   "keywords",           limit: 255
    t.string   "description",        limit: 255
    t.string   "subject",            limit: 255
    t.string   "title",              limit: 255
    t.string   "sub_title",          limit: 255
    t.string   "modelo",             limit: 255
    t.string   "altura",             limit: 255
    t.string   "incluye",            limit: 255
    t.string   "colores",            limit: 255
    t.string   "altura_min",         limit: 255
    t.string   "altura_max",         limit: 255
    t.string   "material",           limit: 255
    t.string    "precio",            limit: 255
    t.float    "descuento",          limit: 24
    t.string   "vesa",               limit: 255
    t.string   "dimensiones",        limit: 255
    t.string   "distancia",          limit: 255
    t.string   "peso",               limit: 255
    t.string   "angulo_in",          limit: 255
    t.string   "angulo_giro",        limit: 255
    t.string   "color",              limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "permission_level",       limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "has_categories", "categories"
  add_foreign_key "has_categories", "productos"
end
