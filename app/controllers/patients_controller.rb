class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_health_centers, :set_users, only: [:new, :edit, :create]
  has_scope :by_name, :by_surname, :by_address, :by_phone, :by_gender, :by_chw


  # GET /patients
  # GET /patients.json
  def index
    @patients = apply_scopes(Patient).all
    if current_user.user_type=="doctor"
      @patients = @patients.where(health_center_id: current_user.health_center_id)
    else
      @patients = @patients.where(user_id: current_user.id)
    end
    @params = params

  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name, :surname, :address, :gender, :birthdate, :phone, :starting_therapy_day, :user_id, :health_center_id)
    end

    def set_health_centers
      @health_centers = HealthCenter.all
      @user_health_center = HealthCenter.all.where(id: current_user.health_center_id).first
    end

    # for the selection of which chw cares the patient
    def set_users
      @users = User.all.where(user_type: "chw")
    end

end
