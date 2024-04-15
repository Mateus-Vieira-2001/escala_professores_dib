class AssistantRegistrationsController < ApplicationController
  before_action :set_assistant_registration, only: %i[ show edit update destroy ]

  # GET /assistant_registrations or /assistant_registrations.json
  def index
    @assistant_registrations = AssistantRegistration.all
  end

  # GET /assistant_registrations/1 or /assistant_registrations/1.json
  def show
  end

  # GET /assistant_registrations/new
  def new
    @assistant_registration = AssistantRegistration.new
  end

  # GET /assistant_registrations/1/edit
  def edit
  end

  # POST /assistant_registrations or /assistant_registrations.json
  def create
    @assistant_registration = AssistantRegistration.new(assistant_registration_params)

    respond_to do |format|
      if @assistant_registration.save
        format.html { redirect_to assistant_registration_url(@assistant_registration), notice: "Assistant registration was successfully created." }
        format.json { render :show, status: :created, location: @assistant_registration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assistant_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assistant_registrations/1 or /assistant_registrations/1.json
  def update
    respond_to do |format|
      if @assistant_registration.update(assistant_registration_params)
        format.html { redirect_to assistant_registration_url(@assistant_registration), notice: "Assistant registration was successfully updated." }
        format.json { render :show, status: :ok, location: @assistant_registration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assistant_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistant_registrations/1 or /assistant_registrations/1.json
  def destroy
    @assistant_registration.destroy!

    respond_to do |format|
      format.html { redirect_to assistant_registrations_url, notice: "Assistant registration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistant_registration
      @assistant_registration = AssistantRegistration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assistant_registration_params
      params.require(:assistant_registration).permit(:name, :birthdate, :class_by_age, :is_teacher_too, :disponibility)
    end
end
