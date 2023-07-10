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

ActiveRecord::Schema[7.0].define(version: 2023_07_09_064627) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "combatants", force: :cascade do |t|
    t.string "name", null: false
    t.integer "maximum_hp", null: false
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
    t.integer "user_id"
    t.integer "dexterity_score"
    t.index ["user_id"], name: "index_combatants_on_user_id"
  end

  create_table "combatants_in_combats", force: :cascade do |t|
    t.integer "visual_initiative"
    t.integer "current_hp"
    t.integer "temporary_hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "combat_id"
    t.bigint "combatant_id"
    t.integer "user_id"
    t.float "hidden_initiative"
    t.integer "potential_damage"
    t.index ["combat_id"], name: "index_combatants_in_combats_on_combat_id"
    t.index ["combatant_id"], name: "index_combatants_in_combats_on_combatant_id"
    t.index ["user_id"], name: "index_combatants_in_combats_on_user_id"
  end

  create_table "combats", force: :cascade do |t|
    t.string "combat_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "user_id"
    t.integer "status", default: 0
    t.float "current_initiative", default: 100.0, null: false
    t.index ["user_id"], name: "index_combats_on_user_id"
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

  add_foreign_key "combatants_in_combats", "combatants"
  add_foreign_key "combatants_in_combats", "combats"
end
