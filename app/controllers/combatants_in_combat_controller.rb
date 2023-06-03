class CombatantsInCombatController < ApplicationController
  before_action :set_combatant_in_combat
  skip_before_action :verify_authenticity_token

  def update
    respond_to do |format|
      if @combatant_in_combat.update(combatant_in_combat_params)
        format.json { render json: @combatant_in_combat, status: :ok }
      else
        format.json { render json: @combatant_in_combat.errors, status: :unprocessable_entity }
      end
    end 
  end   

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_combatant_in_combat
    @combatant_in_combat = CombatantsInCombat.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def combatant_in_combat_params
    params.require(:combatant_in_combat).permit(
      :working_initiative,
      :current_hp,
      :temporary_hp,
      :combatant_id,
      :user_id
    )
  end  
end