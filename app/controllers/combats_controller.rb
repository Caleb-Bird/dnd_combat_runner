class CombatsController < ApplicationController
  before_action :set_combat, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_all_combatants, only: %i[new edit create update]

  # GET /combats or /combats.json
  def index
    @combats = current_user.combats
  end

  # GET /combats/1 or /combats/1.json
  def show
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

    respond_to do |format|
      if @combat.save
        format.html { redirect_to combat_url(@combat), notice: "Combat was successfully created." }
        format.json { render :show, status: :created, location: @combat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @combat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combats/1 or /combats/1.json
  def update
    # TODO Final Output: When deletingg a CiC we want the combatant params to have a { id: _destroy: true} object
    respond_to do |format|
      if @combat.update(combat_params)
        format.html { redirect_to combat_url(@combat), notice: "Combat was successfully updated." }
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
         
        combatants_in_combat_attributes:
          [:combatant_id, :id, :_destroy]
      )
    end
end
