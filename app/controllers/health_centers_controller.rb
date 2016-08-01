class HealthCentersController < ApplicationController
  before_action :set_health_center, only: [:show, :edit, :update, :destroy]

  # GET /health_centers
  # GET /health_centers.json
  def index
    @health_centers = HealthCenter.all
  end

  # GET /health_centers/1
  # GET /health_centers/1.json
  def show
  end

  # GET /health_centers/new
  def new
    @health_center = HealthCenter.new
  end

  # GET /health_centers/1/edit
  def edit
  end

  # POST /health_centers
  # POST /health_centers.json
  def create
    @health_center = HealthCenter.new(health_center_params)

    respond_to do |format|
      if @health_center.save
        format.html { redirect_to @health_center, notice: 'Health center was successfully created.' }
        format.json { render :show, status: :created, location: @health_center }
      else
        format.html { render :new }
        format.json { render json: @health_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_centers/1
  # PATCH/PUT /health_centers/1.json
  def update
    respond_to do |format|
      if @health_center.update(health_center_params)
        format.html { redirect_to @health_center, notice: 'Health center was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_center }
      else
        format.html { render :edit }
        format.json { render json: @health_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_centers/1
  # DELETE /health_centers/1.json
  def destroy
    @health_center.destroy
    respond_to do |format|
      format.html { redirect_to health_centers_url, notice: 'Health center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_center
      @health_center = HealthCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_center_params
      params.require(:health_center).permit(:name, :address, :phone, :doctor_id)
    end
end
