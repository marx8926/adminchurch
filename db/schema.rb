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

ActiveRecord::Schema.define(version: 20130812224934) do

  create_table "avanzadas", force: true do |t|
    t.string   "direccion"
    t.string   "referencia"
    t.date     "fecha_creacion"
    t.integer  "cant_miembros"
    t.integer  "cant_conv"
    t.integer  "cant_bautiz"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "celulas", force: true do |t|
    t.string   "codigo"
    t.string   "anfitrion"
    t.date     "creacion"
    t.integer  "tipo"
    t.string   "direccion"
    t.string   "referencia"
    t.float    "latitud"
    t.float    "longitud"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cultos", force: true do |t|
    t.date     "fecha"
    t.integer  "asistentes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iglesia", force: true do |t|
    t.string   "direccion"
    t.string   "referencia"
    t.date     "fecha_creacion"
    t.string   "telefono"
    t.float    "latitud"
    t.float    "longitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministerios", force: true do |t|
    t.string   "nombre"
    t.date     "creacion"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "edad"
    t.date     "nacimiento"
    t.string   "dni"
    t.string   "ocupacion"
    t.string   "profesion"
    t.string   "estado"
    t.string   "dia"
    t.time     "hora"
    t.string   "invitado"
    t.string   "direccion"
    t.string   "referencia"
    t.float    "longitud"
    t.float    "latitud"
    t.date     "conversion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reds", force: true do |t|
    t.string   "code"
    t.integer  "tipo"
    t.string   "direccion"
    t.string   "referencia"
    t.float    "latitud"
    t.float    "longitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubigeos", force: true do |t|
    t.string   "departamento"
    t.string   "provincia"
    t.string   "distrito"
    t.integer  "coddepartamento"
    t.integer  "codprovincia"
    t.integer  "coddristito"
    t.float    "latitud"
    t.float    "longitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
