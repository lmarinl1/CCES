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

ActiveRecord::Schema.define(version: 2019_01_11_135624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aportes", force: :cascade do |t|
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.text "descripcion"
    t.string "nombre", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "empresarios", force: :cascade do |t|
    t.integer "municipio"
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.text "descripcion"
    t.string "nombre", null: false
    t.string "apellido", null: false
    t.string "cedula"
    t.string "sexo", null: false
    t.integer "empresa"
    t.string "telefono"
    t.string "celular"
    t.string "email", null: false
    t.string "whatsapp"
    t.string "instagram"
    t.string "twitter"
    t.string "facebook"
    t.integer "puntov"
    t.string "cNombre"
    t.string "cCel1"
    t.string "cCel2"
    t.string "cTel"
    t.string "cWhatsapp"
    t.string "cEmail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["email"], name: "index_empresarios_on_email", unique: true
  end

  create_table "empresas", force: :cascade do |t|
    t.integer "municipio", null: false
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.text "descripcion"
    t.string "nombre", null: false
    t.string "nit"
    t.integer "nroEmpleados"
    t.string "direccion"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "estefans", force: :cascade do |t|
    t.string "cedula", null: false
    t.string "nombre", null: false
    t.string "apellido", null: false
    t.date "nacimento"
    t.string "cargo", null: false
    t.string "email", null: false
    t.integer "creador"
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.string "cel", null: false
    t.integer "zona"
    t.integer "municipio"
    t.string "instagram"
    t.string "facebook"
    t.string "twitter"
    t.string "whatsapp"
    t.text "descripcion"
    t.string "sexo", null: false
    t.integer "puntov"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["cedula"], name: "index_estefans_on_cedula", unique: true
    t.index ["email"], name: "index_estefans_on_email", unique: true
  end

  create_table "eventos", force: :cascade do |t|
    t.integer "zona"
    t.boolean "activo", default: true, null: false
    t.date "fecha", null: false
    t.integer "modificador"
    t.integer "creador"
    t.text "descripcion"
    t.string "nombre", null: false
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.time "hora"
  end

  create_table "municipios", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "categoria"
    t.string "departamento"
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.string "web"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "politicos", force: :cascade do |t|
    t.integer "municipio"
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.text "descripcion"
    t.string "nombre", null: false
    t.string "apellido", null: false
    t.string "cedula"
    t.string "sexo", null: false
    t.string "partido", null: false
    t.string "telefono"
    t.string "celular"
    t.string "email", null: false
    t.string "whatsapp"
    t.string "instagram"
    t.string "twitter"
    t.string "facebook"
    t.integer "puntov"
    t.string "cNombre"
    t.string "cCel1"
    t.string "cCel2"
    t.string "cTel"
    t.string "cWhatsapp"
    t.string "cEmail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["email"], name: "index_politicos_on_email", unique: true
  end

  create_table "punto_vs", force: :cascade do |t|
    t.string "nombre", null: false
    t.integer "zona"
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.text "descripcion"
    t.string "direccion", null: false
    t.integer "nromesas"
    t.integer "nropersonasmesa"
    t.integer "hombres"
    t.integer "mujeres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "puntos", force: :cascade do |t|
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.text "descripcion"
    t.float "puntos", null: false
    t.integer "tipo", null: false
    t.integer "punteado", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universidads", force: :cascade do |t|
    t.integer "municipio", null: false
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.text "descripcion"
    t.string "nombre", null: false
    t.string "nit"
    t.integer "nroEstudiantes"
    t.string "direccion"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voluntarios", force: :cascade do |t|
    t.string "cedula", null: false
    t.string "nombre", null: false
    t.string "apellido", null: false
    t.date "nacimiento"
    t.string "perfil"
    t.string "email", null: false
    t.integer "creador"
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.string "cel"
    t.integer "zona"
    t.integer "municipio"
    t.string "instagram"
    t.string "facebook"
    t.string "twitter"
    t.string "whatsapp"
    t.text "descripcion"
    t.string "direccion"
    t.string "sexo", null: false
    t.integer "puntov"
    t.integer "empresa"
    t.string "cargo"
    t.integer "universidad"
    t.string "carrera"
    t.integer "votos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["cedula"], name: "index_voluntarios_on_cedula", unique: true
    t.index ["email"], name: "index_voluntarios_on_email", unique: true
  end

  create_table "zonas", force: :cascade do |t|
    t.string "nombre", null: false
    t.integer "municipio", null: false
    t.boolean "activo", default: true, null: false
    t.integer "modificador"
    t.integer "creador"
    t.string "lmap"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

end
