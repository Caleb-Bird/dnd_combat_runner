require "application_system_test_case"

class CombatantsTest < ApplicationSystemTestCase
  setup do
    @combatant = combatants(:one)
  end

  test "visiting the index" do
    visit combatants_url
    assert_selector "h1", text: "Combatants"
  end

  test "should create combatant" do
    visit combatants_url
    click_on "New combatant"

    fill_in "Ac", with: @combatant.AC
    fill_in "Cha save", with: @combatant.Cha_Save
    fill_in "Con save", with: @combatant.Con_Save
    fill_in "Death save fail", with: @combatant.Death_Save_Fail
    fill_in "Death save pass", with: @combatant.Death_Save_Pass
    fill_in "Dex save", with: @combatant.Dex_Save
    fill_in "Hp", with: @combatant.HP
    fill_in "Hp max", with: @combatant.HP_Max
    fill_in "Initiative", with: @combatant.Initiative
    fill_in "Int save", with: @combatant.Int_save
    fill_in "Name", with: @combatant.Name
    fill_in "Str save", with: @combatant.Str_Save
    fill_in "Temp hp", with: @combatant.Temp_HP
    fill_in "Wis save", with: @combatant.Wis_save
    click_on "Create Combatant"

    assert_text "Combatant was successfully created"
    click_on "Back"
  end

  test "should update Combatant" do
    visit combatant_url(@combatant)
    click_on "Edit this combatant", match: :first

    fill_in "Ac", with: @combatant.AC
    fill_in "Cha save", with: @combatant.Cha_Save
    fill_in "Con save", with: @combatant.Con_Save
    fill_in "Death save fail", with: @combatant.Death_Save_Fail
    fill_in "Death save pass", with: @combatant.Death_Save_Pass
    fill_in "Dex save", with: @combatant.Dex_Save
    fill_in "Hp", with: @combatant.HP
    fill_in "Hp max", with: @combatant.HP_Max
    fill_in "Initiative", with: @combatant.Initiative
    fill_in "Int save", with: @combatant.Int_save
    fill_in "Name", with: @combatant.Name
    fill_in "Str save", with: @combatant.Str_Save
    fill_in "Temp hp", with: @combatant.Temp_HP
    fill_in "Wis save", with: @combatant.Wis_save
    click_on "Update Combatant"

    assert_text "Combatant was successfully updated"
    click_on "Back"
  end

  test "should destroy Combatant" do
    visit combatant_url(@combatant)
    click_on "Destroy this combatant", match: :first

    assert_text "Combatant was successfully destroyed"
  end
end
