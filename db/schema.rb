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

ActiveRecord::Schema[7.0].define(version: 2023_03_16_012352) do
  create_table "combatants", force: :cascade do |t|
    t.string "Name"
    t.integer "Initiative"
    t.integer "HP_Max"
    t.integer "HP"
    t.integer "Temp_HP"
    t.integer "AC"
    t.integer "Str_Save"
    t.integer "Dex_Save"
    t.integer "Con_Save"
    t.integer "Int_Save"
    t.integer "Wis_Save"
    t.integer "Cha_Save"
    t.integer "Death_Save_Pass"
    t.integer "Death_Save_Fail"
    t.boolean "Dead"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
