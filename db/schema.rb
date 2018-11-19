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

ActiveRecord::Schema.define(version: 2018_11_19_181106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_horas", force: :cascade do |t|
    t.datetime "hora_inicio"
    t.datetime "hora_fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requerimientos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.bigint "proyecto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyecto_id"], name: "index_requerimientos_on_proyecto_id"
  end

  create_table "tareas", force: :cascade do |t|
    t.string "descripcion"
    t.integer "horas_estimadas"
    t.integer "horas_cargadas"
    t.date "fecha"
    t.string "empleado"
    t.bigint "requerimiento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "estado"
    t.index ["requerimiento_id"], name: "index_tareas_on_requerimiento_id"
  end

  add_foreign_key "requerimientos", "proyectos"
  add_foreign_key "tareas", "requerimientos"
end
