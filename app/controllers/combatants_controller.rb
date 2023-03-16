class CombatantsController < ApplicationController
  before_action :set_combatant, only: %i[ show edit update destroy ]

  # GET /combatants or /combatants.json
  def index
    @combatants = Combatant.all
  end

  # GET /combatants/1 or /combatants/1.json
  def show
  end

  # GET /combatants/new
  def new
    @combatant = Combatant.new
  end

  # GET /combatants/1/edit
  def edit
  end

  # POST /combatants or /combatants.json
  def create
    @combatant = Combatant.new(combatant_params)

    respond_to do |format|
      if @combatant.save
        format.html { redirect_to combatant_url(@combatant), notice: "Combatant was successfully created." }
        format.json { render :show, status: :created, location: @combatant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @combatant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combatants/1 or /combatants/1.json
  def update
    respond_to do |format|
      if @combatant.update(combatant_params)
        format.html { redirect_to combatant_url(@combatant), notice: "Combatant was successfully updated." }
        format.json { render :show, status: :ok, location: @combatant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @combatant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combatants/1 or /combatants/1.json
  def destroy
    @combatant.destroy

    respond_to do |format|
      format.html { redirect_to combatants_url, notice: "Combatant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combatant
      @combatant = Combatant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def combatant_params
      params.require(:combatant).permit(:Name, :Initiative, :HP_Max, :HP, :Temp_HP, :AC, :Str_Save, :Dex_Save, :Con_Save, :Int_Save, :Wis_Save, :Cha_Save, :Death_Save_Pass, :Death_Save_Fail, :Dead)
    end
end
