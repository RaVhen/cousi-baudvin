class DragonEggsController < ApplicationController
  before_action :set_dragon_egg, only: [:show, :edit, :update, :destroy]

  # GET /dragon_eggs
  # GET /dragon_eggs.json
  def index
    @dragon_eggs = DragonEgg.all
  end

  # GET /dragon_eggs/1
  # GET /dragon_eggs/1.json
  def show
  end

  # GET /dragon_eggs/new
  def new
    @dragon_egg = DragonEgg.new
  end

  # GET /dragon_eggs/1/edit
  def edit
  end

  # POST /dragon_eggs
  # POST /dragon_eggs.json
  def create
    @dragon_egg = DragonEgg.new(dragon_egg_params)

    respond_to do |format|
      if @dragon_egg.save
        format.html { redirect_to @dragon_egg, notice: 'Dragon egg was successfully created.' }
        format.json { render :show, status: :created, location: @dragon_egg }
      else
        format.html { render :new }
        format.json { render json: @dragon_egg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dragon_eggs/1
  # PATCH/PUT /dragon_eggs/1.json
  def update
    respond_to do |format|
      if @dragon_egg.update(dragon_egg_params)
        format.html { redirect_to @dragon_egg, notice: 'Dragon egg was successfully updated.' }
        format.json { render :show, status: :ok, location: @dragon_egg }
      else
        format.html { render :edit }
        format.json { render json: @dragon_egg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dragon_eggs/1
  # DELETE /dragon_eggs/1.json
  def destroy
    @dragon_egg.destroy
    respond_to do |format|
      format.html { redirect_to dragon_eggs_url, notice: 'Dragon egg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dragon_egg
      @dragon_egg = DragonEgg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dragon_egg_params
      params.require(:dragon_egg).permit(:race, :count, :description)
    end
end
