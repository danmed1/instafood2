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

ActiveRecord::Schema.define(version: 20151110231303) do

  create_table "categoria_ings", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria_recs", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receta", force: :cascade do |t|
    t.string   "nombre"
    t.text     "pasos"
    t.integer  "tiempo_prep"
    t.integer  "porciones"
    t.integer  "usuario_id"
    t.string   "foto"
    t.string   "descripcion"
    t.integer  "categoria_rec_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "receta_ings", force: :cascade do |t|
    t.integer  "recetum_idr"
    t.integer  "ingrediente_id"
    t.float    "cantidad"
    t.string   "unidad"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "receta_usrs", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "receta_id"
    t.integer  "calif"
    t.boolean  "siCalif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "alias"
    t.string   "nombre"
    t.string   "apellido"
    t.date     "f_nac"
    t.boolean  "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
