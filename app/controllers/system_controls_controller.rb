class SystemControlsController < ApplicationController
  before_action :set_system_control, only: %i[show edit update destroy]
  has_scope :search_system_controls

  # GET /system_controls
  def index
    @system_controls = apply_scopes(SystemControl).page(params[:page]).per(10)
  end

  # GET /system_controls/1
  def show; end

  # GET /system_controls/new
  def new
    @system_control = SystemControl.new
  end

  # GET /system_controls/1/edit
  def edit; end

  # POST /system_controls
  def create
    @system_control = SystemControl.new(system_control_params)
    if @system_control.save
      redirect_to system_controls_url, notice: 'System control was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /system_controls/1
  def update
    if @system_control.update(system_control_params)
      redirect_to system_controls_url, notice: 'System control was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /system_controls/1
  def destroy
    @system_control.destroy
    redirect_to system_controls_url, notice: 'System control was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_system_control
    @system_control = SystemControl.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def system_control_params
    # params.fetch(:system_control, {})
    permitted_params.system_control
  end
end



