require "test_helper"

class CombatantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combatant = combatants(:one)
  end

  test "should get index" do
    get combatants_url
    assert_response :success
  end

  test "should get new" do
    get new_combatant_url
    assert_response :success
  end

  test "should create combatant" do
    assert_difference("Combatant.count") do
      post combatants_url, params: { combatant: { AC: @combatant.AC, Cha_Save: @combatant.Cha_Save, Con_Save: @combatant.Con_Save, Dead: @combatant.Dead, Death_Save_Fail: @combatant.Death_Save_Fail, Death_Save_Pass: @combatant.Death_Save_Pass, Dex_Save: @combatant.Dex_Save, HP: @combatant.HP, HP_Max: @combatant.HP_Max, Initiative: @combatant.Initiative, Int_Save: @combatant.Int_Save, Name: @combatant.Name, Str_Save: @combatant.Str_Save, Temp_HP: @combatant.Temp_HP, Wis_Save: @combatant.Wis_Save } }
    end

    assert_redirected_to combatant_url(Combatant.last)
  end

  test "should show combatant" do
    get combatant_url(@combatant)
    assert_response :success
  end

  test "should get edit" do
    get edit_combatant_url(@combatant)
    assert_response :success
  end

  test "should update combatant" do
    patch combatant_url(@combatant), params: { combatant: { AC: @combatant.AC, Cha_Save: @combatant.Cha_Save, Con_Save: @combatant.Con_Save, Dead: @combatant.Dead, Death_Save_Fail: @combatant.Death_Save_Fail, Death_Save_Pass: @combatant.Death_Save_Pass, Dex_Save: @combatant.Dex_Save, HP: @combatant.HP, HP_Max: @combatant.HP_Max, Initiative: @combatant.Initiative, Int_Save: @combatant.Int_Save, Name: @combatant.Name, Str_Save: @combatant.Str_Save, Temp_HP: @combatant.Temp_HP, Wis_Save: @combatant.Wis_Save } }
    assert_redirected_to combatant_url(@combatant)
  end

  test "should destroy combatant" do
    assert_difference("Combatant.count", -1) do
      delete combatant_url(@combatant)
    end

    assert_redirected_to combatants_url
  end
end
