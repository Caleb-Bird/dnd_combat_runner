# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_31_072402) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "combatants", force: :cascade do |t|
    t.string "name"
    t.integer "maximum_hp"
    t.integer "armor_class"
    t.integer "spell_dc"
    t.integer "strength_save"
    t.integer "dexterity_save"
    t.integer "constitution_save"
    t.integer "intellect_save"
    t.integer "wisdom_save"
    t.integer "charisma_save"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "initiative"
    t.string "description"
    t.integer "cr_or_level"
  end

  create_table "combats", force: :cascade do |t|
    t.string "combat_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
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

end
