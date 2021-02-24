# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_21_162205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "marcas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nombre"], name: "index_marcas_on_nombre", unique: true
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.integer "cant_minima"
    t.integer "cant_actual"
    t.integer "precio"
    t.boolean "activo"
    t.serial "marca_id", null: false
    t.serial "rubro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rubros", force: :cascade do |t|
    t.string "nombre"
    t.boolean "perecedero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nombre"], name: "index_rubros_on_nombre", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "productos", "marcas"
  add_foreign_key "productos", "rubros"
end
