class CombatsController < ApplicationController
  before_action :set_combat, only: %i[show edit update destroy setup run]
  before_action :authenticate_user!, except: [:index, :show, :setup]
  before_action :set_all_combatants, only: %i[new edit create update]

  # GET /combats or /combats.json
  def index
    
    @combats = current_user.combats
  end

  # GET /combats/1 or /combats/1.json
  def show; 
  end
  

  # GET /combats/new
  def new
    @combat = Combat.new
  end

  # GET /combats/1/edit
  def edit
  end

  # POST /combats or /combats.json
  def create
    @combat = Combat.new(combat_params)
    destination = params[:redirect_url] || combat_url(@combat)
    respond_to do |format|
      if @combat.save
        format.html { redirect_to destination, notice: "Combat was successfully created." }
        format.json { render :show, status: :created, location: @combat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @combat.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /combats/1 or /combats/1.json
  def update
    destination = params[:redirect_url] || combat_url(@combat)
    respond_to do |format|
      if @combat.update(combat_params)
        format.html { redirect_to destination, notice: "Combat was successfully updated." }
        format.json { render :show, status: :ok, location: @combat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @combat.errors, status: :unprocessable_entity }
      end
    end 
  end   


  # DELETE /combats/1 or /combats/1.json
  def destroy
    @combat.destroy

    respond_to do |format|
      format.html { redirect_to combats_url, notice: "Combat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def run
    if @combat.status == "draft"
      redirect_to setup_combat_path
    end
  end

  def setup
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_combat
    @combat = Combat.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def combat_params
    params.require(:combat).permit(
      :combat_name,
      :description,
      :user_id,
      :status,
         
      combatants_in_combat_attributes:
        [:visual_initiative,:hidden_initiative, :current_hp, :temporary_hp, :combatant_id, :id, :_destroy, :user_id, :combat_table_index]    
    )
  end  
end