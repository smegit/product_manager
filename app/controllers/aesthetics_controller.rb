class AestheticsController < ApplicationController
  before_action :set_aesthetic, only: %i[show edit update destroy]

  has_scope :search_aesthetics

  # GET /aesthetics
  def index
    @aesthetics = apply_scopes(Aesthetic).page(params[:page]).per(10)
  end

  # GET /aesthetics/1
  def show; end

  # GET /aesthetics/new
  def new
    @aesthetic = Aesthetic.new
  end

  # GET /aesthetics/1/edit
  def edit; end

  # POST /aesthetics
  def create
    @aesthetic = Aesthetic.new(aesthetic_params)

    if @aesthetic.save
      redirect_to @aesthetic, notice: 'Aesthetic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /aesthetics/1
  def update
    if @aesthetic.update(aesthetic_params)
      redirect_to @aesthetic, notice: 'Aesthetic was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /aesthetics/1
  def destroy
    @aesthetic.destroy
    redirect_to aesthetics_url, notice: 'Aesthetic was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_aesthetic
    @aesthetic = Aesthetic.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def aesthetic_params
    params.require(:aesthetic).permit(:control_type, :aesthetic_description, :aesthetic_code)
  end
end
