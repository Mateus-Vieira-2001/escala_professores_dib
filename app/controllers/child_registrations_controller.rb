class ChildRegistrationsController < ApplicationController
  before_action :set_child_registration, only: %i[ show edit update destroy ]

  # GET /child_registrations or /child_registrations.json
  def index
    @child_registrations = ChildRegistration.all
  end

  # GET /child_registrations/1 or /child_registrations/1.json
  def show
  end

  # GET /child_registrations/new
  def new
    @child_registration = ChildRegistration.new
  end

  # GET /child_registrations/1/edit
  def edit
  end

  # POST /child_registrations or /child_registrations.json
  def create
    @child_registration = ChildRegistration.new(child_registration_params)

    respond_to do |format|
      if @child_registration.save
        format.html { redirect_to child_registration_url(@child_registration), notice: "Child registration was successfully created." }
        format.json { render :show, status: :created, location: @child_registration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @child_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_registrations/1 or /child_registrations/1.json
  def update
    respond_to do |format|
      if @child_registration.update(child_registration_params)
        format.html { redirect_to child_registration_url(@child_registration), notice: "Child registration was successfully updated." }
        format.json { render :show, status: :ok, location: @child_registration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @child_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_registrations/1 or /child_registrations/1.json
  def destroy
    @child_registration.destroy!

    respond_to do |format|
      format.html { redirect_to child_registrations_url, notice: "Child registration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_registration
      @child_registration = ChildRegistration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def child_registration_params
      params.require(:child_registration).permit(:name, :birthdate, :guardian, :disease, :observation)
    end
end
