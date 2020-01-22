class SpeciesController < ApplicationController
  before_action :set_species, only: [:show, :edit, :update, :destroy]

  # GET /species
  # GET /species.json
  def index
    @species = Species.paginate(page: params[:page], per_page: 10).order('id ASC')
  end

  # GET /species/1
  # GET /species/1.json
  def show
  end

  # GET /species/new
  def new
    @species = Species.new
    @species.flower = Flower.new
    @species.foliage = Foliage.new
  end

  # GET /species/1/edit
  def edit
    @species.flower = Flower.new unless @species.flower.present?
    @species.foliage = Foliage.new unless @species.foliage.present?
  end

  # POST /species
  # POST /species.json
  def create
    @species = Species.new(species_params)

    respond_to do |format|
      if @species.save
        format.html { redirect_to @species, notice: 'Species was successfully created.' }
        format.json { render :show, status: :created, location: @species }
      else
        format.html { render :new }
        format.json { render json: @species.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /species/1
  # PATCH/PUT /species/1.json
  def update
    respond_to do |format|
      if @species.update(species_params)
        format.html { redirect_to @species, notice: 'Species was successfully updated.' }
        format.json { render :show, status: :ok, location: @species }
      else
        format.html { render :edit }
        format.json { render json: @species.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /species/1
  # DELETE /species/1.json
  def destroy
    @species.destroy
    respond_to do |format|
      format.html { redirect_to species_index_url, notice: 'Species was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_species
      @species = Species.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def species_params
      params.require(:species).permit(
        :id, 
        :duration, 
        :common_name, 
        :year, 
        :type, 
        :scientific_name, 
        :native_status,
        flower_attributes: [:id, '_destroy', :conspicuous, :color],
        foliage_attributes: [:id, '_destroy', :texture, :porosity_winter, :porosity_summer, :color],
      )
    end
end
