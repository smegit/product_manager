class ApprovalsController < ApplicationController
  before_action :set_approval, only: %i[show edit update destroy]

  has_scope :search_approvals

  # GET /approvals
  def index
    @approvals = apply_scopes(Approval).page(params[:page]).per(10).order(updated_at: :desc)
  end

  # GET /approvals/1
  def show; end

  # GET /approvals/new
  def new
    @approval = Approval.new
  end

  # GET /approvals/1/edit
  def edit; end

  # POST /approvals
  def create
    @approval = Approval.new(approval_params)

    if @approval.save
      redirect_to @approval, notice: 'Approval was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /approvals/1
  def update
    if @approval.update(approval_params)
      redirect_to @approval, notice: 'Approval was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /approvals/1
  def destroy
    @approval.destroy
    redirect_to approvals_url, notice: 'Approval was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_approval
    @approval = Approval.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def approval_params
    # params.fetch(:approval, {})
    params.require(:approval).permit(:approval_type, :date, :approval_no, :sub_type, :description, :standard, :reference, :effective_date, :expiry_date, :status, :notes, :approval_doc, product_ids: [])
  end
end
