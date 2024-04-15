class LeadersRegistrationsController < ApplicationController
  before_action :set_leaders_registration, only: %i[ show edit update destroy ]

  # GET /leaders_registrations or /leaders_registrations.json
  def index
    @leaders_registrations = LeadersRegistration.all
  end

  # GET /leaders_registrations/1 or /leaders_registrations/1.json
  def show
  end

  # GET /leaders_registrations/new
  def new
    @leaders_registration = LeadersRegistration.new
  end

  # GET /leaders_registrations/1/edit
  def edit
  end

  # POST /leaders_registrations or /leaders_registrations.json
  def create
    @leaders_registration = LeadersRegistration.new(leaders_registration_params)

    respond_to do |format|
      if @leaders_registration.save
        format.html { redirect_to leaders_registration_url(@leaders_registration), notice: "Leaders registration was successfully created." }
        format.json { render :show, status: :created, location: @leaders_registration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leaders_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaders_registrations/1 or /leaders_registrations/1.json
  def update
    respond_to do |format|
      if @leaders_registration.update(leaders_registration_params)
        format.html { redirect_to leaders_registration_url(@leaders_registration), notice: "Leaders registration was successfully updated." }
        format.json { render :show, status: :ok, location: @leaders_registration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leaders_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaders_registrations/1 or /leaders_registrations/1.json
  def destroy
    @leaders_registration.destroy!

    respond_to do |format|
      format.html { redirect_to leaders_registrations_url, notice: "Leaders registration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaders_registration
      @leaders_registration = LeadersRegistration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leaders_registration_params
      params.require(:leaders_registration).permit(:name, :birthdate, :disponibility, :is_teacher_too, :is_assistant_too, :class_by_age)
    end
end
