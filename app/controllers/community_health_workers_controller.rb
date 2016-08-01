class CommunityHealthWorkersController < ApplicationController
  before_action :set_community_health_worker, only: [:show, :edit, :update, :destroy]

  # GET /community_health_workers
  # GET /community_health_workers.json
  def index
    @community_health_workers = CommunityHealthWorker.all
  end

  # GET /community_health_workers/1
  # GET /community_health_workers/1.json
  def show
  end

  # GET /community_health_workers/new
  def new
    @community_health_worker = CommunityHealthWorker.new
  end

  # GET /community_health_workers/1/edit
  def edit
  end

  # POST /community_health_workers
  # POST /community_health_workers.json
  def create
    @community_health_worker = CommunityHealthWorker.new(community_health_worker_params)

    respond_to do |format|
      if @community_health_worker.save
        format.html { redirect_to @community_health_worker, notice: 'Community health worker was successfully created.' }
        format.json { render :show, status: :created, location: @community_health_worker }
      else
        format.html { render :new }
        format.json { render json: @community_health_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_health_workers/1
  # PATCH/PUT /community_health_workers/1.json
  def update
    respond_to do |format|
      if @community_health_worker.update(community_health_worker_params)
        format.html { redirect_to @community_health_worker, notice: 'Community health worker was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_health_worker }
      else
        format.html { render :edit }
        format.json { render json: @community_health_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_health_workers/1
  # DELETE /community_health_workers/1.json
  def destroy
    @community_health_worker.destroy
    respond_to do |format|
      format.html { redirect_to community_health_workers_url, notice: 'Community health worker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_health_worker
      @community_health_worker = CommunityHealthWorker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_health_worker_params
      params.require(:community_health_worker).permit(:name, :surname, :birthdate, :gender, :phone, :health_center_id)
    end
end
