class SelectionControlsController < ApplicationController
  before_action :set_selection_control, only: [:show, :edit, :update, :destroy]
  has_scope :search_selection_controls

  # GET /selection_controls
  def index
    @selection_controls = SelectionControl.all
  end

  # GET /selection_controls/1
  def show
  end

  # GET /selection_controls/new
  def new
    @selection_control = SelectionControl.new
  end

  # GET /selection_controls/1/edit
  def edit
  end

  # POST /selection_controls
  def create
    @selection_control = SelectionControl.new(selection_control_params)

    if @selection_control.save
      redirect_to @selection_control, notice: 'Selection control was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /selection_controls/1
  def update
    if @selection_control.update(selection_control_params)
      redirect_to @selection_control, notice: 'Selection control was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /selection_controls/1
  def destroy
    @selection_control.destroy
    redirect_to selection_controls_url, notice: 'Selection control was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selection_control
      @selection_control = SelectionControl.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def selection_control_params
      params.require(:selection_control).permit(:name, :value, :code, :label, :description)
    end
end
