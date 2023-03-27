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

    click_on "Create Combatant"

    assert_text "Combatant was successfully created"
    click_on "Back"
  end

  test "should update Combatant" do
    visit combatant_url(@combatant)
    click_on "Edit this combatant", match: :first

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
