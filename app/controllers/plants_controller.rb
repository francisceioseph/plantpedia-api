class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  before_action :set_species, only: [:new, :create, :show, :edit, :update]
  load_and_authorize_resource

  # GET /plants
  # GET /plants.json
  def index
    @plants = Plant.paginate(page: params[:page], per_page: 10).order('id ASC')
  end
  
  # GET /plants/1
  # GET /plants/1.json
  def show
  end
  
  # GET /plants/new
  def new
    @plant = Plant.new
    @plant.plant_images.build

    @species = Species.all
  end

  # GET /plants/1/edit
  def edit
    @plant.plant_images.build
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = Plant.new(plant_params)

    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: 'Plant was successfully created.' }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to edit_plant_path(@plant), notice: 'Plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: 'Plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    def set_species
      @species = Species.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(
          :id, 
          :description,
          :scientific_name,
          :common_name, 
          :native_status,
          :species_id,
          plant_images_attributes: [:id, :url, '_destroy']
        )
    end
end
