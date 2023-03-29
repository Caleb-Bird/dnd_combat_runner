require "application_system_test_case"

class CombatsTest < ApplicationSystemTestCase
  setup do
    @combat = combats(:one)
  end

  test "visiting the index" do
    visit combats_url
    assert_selector "h1", text: "Combats"
  end

  test "should create combat" do
    visit combats_url
    click_on "New combat"

    fill_in "Combat name", with: @combat.combat_name
    click_on "Create Combat"

    assert_text "Combat was successfully created"
    click_on "Back"
  end

  test "should update Combat" do
    visit combat_url(@combat)
    click_on "Edit this combat", match: :first

    fill_in "Combat name", with: @combat.combat_name
    click_on "Update Combat"

    assert_text "Combat was successfully updated"
    click_on "Back"
  end

  test "should destroy Combat" do
    visit combat_url(@combat)
    click_on "Destroy this combat", match: :first

    assert_text "Combat was successfully destroyed"
  end
end
