class CombatantsController < ApplicationController
  before_action :set_combatant, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_all_combatants, only: :index
  
  #before_action :correct_user, only: [:edit, :update, :destroy] I THINK THIS IS CAUSING MY ERRORS
  # GET /combatants or /combatants.json
  def index
  end

  # GET /combatants/1 or /combatants/1.json
  def show
  end

  # GET /combatants/new
  def new
   @combatant = Combatant.new
    #@combatant = current_user.combatants.build     this potential change is giving me errors "undefined method"
  end

  # GET /combatants/1/edit
  def edit
  end

  # POST /combatants or /combatants.json
  def create
   @combatant = Combatant.new(combatant_params)
    #@combatant = current_user.combatants.build(combatant_params)    
    respond_to do |format|
      if @combatant.save
        format.html { redirect_to combatants_path, notice: "Combatant was successfully created." }
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
        format.html { redirect_to combatants_path, notice: "Combatant was successfully updated." }
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

    #def correct_user                                                       this is giving me erros not sure as well
      #@combatant = current_user.combatants.find_by(id: params[:id])
      #redirect_to combatants_path, notice: "Not Autherized to Edit This Combatant" if @combatant.nil?
    #end

    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combatant
      @combatant = Combatant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def combatant_params
      params.require(:combatant).permit(
        :name,
        :description,
        :cr_or_level,
        :maximum_hp,
        :temporary_hp,
        :hp,
        :armor_class,
        :initiative,
        :spell_dc,
        :strength_save,
        :dexterity_save,
        :constitution_save,
        :intellect_save,
        :wisdom_save,
        :charisma_save,
        :death_save_failed,
        :death_save_passed,
        :dead,
        :user_id
      )
    end
end