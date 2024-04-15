class TeacherRegistrationsController < ApplicationController
  before_action :set_teacher_registration, only: %i[ show edit update destroy ]

  # GET /teacher_registrations or /teacher_registrations.json
  def index
    @teacher_registrations = TeacherRegistration.all
  end

  # GET /teacher_registrations/1 or /teacher_registrations/1.json
  def show
  end

  # GET /teacher_registrations/new
  def new
    @teacher_registration = TeacherRegistration.new
  end

  # GET /teacher_registrations/1/edit
  def edit
  end

  # POST /teacher_registrations or /teacher_registrations.json
  def create
    @teacher_registration = TeacherRegistration.new(teacher_registration_params)

    respond_to do |format|
      if @teacher_registration.save
        format.html { redirect_to teacher_registration_url(@teacher_registration), notice: "Teacher registration was successfully created." }
        format.json { render :show, status: :created, location: @teacher_registration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_registrations/1 or /teacher_registrations/1.json
  def update
    respond_to do |format|
      if @teacher_registration.update(teacher_registration_params)
        format.html { redirect_to teacher_registration_url(@teacher_registration), notice: "Teacher registration was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher_registration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_registrations/1 or /teacher_registrations/1.json
  def destroy
    @teacher_registration.destroy!

    respond_to do |format|
      format.html { redirect_to teacher_registrations_url, notice: "Teacher registration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_registration
      @teacher_registration = TeacherRegistration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_registration_params
      params.require(:teacher_registration).permit(:name, :email, :disponibility, :is_assistant_too, :class_by_age)
    end
end
