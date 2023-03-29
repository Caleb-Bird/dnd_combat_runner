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

ActiveRecord::Schema[7.0].define(version: 2023_03_29_181616) do
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

end
