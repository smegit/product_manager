class ProductsController < BaseController
  before_action :load_product, only: %i[show edit update destroy history]
  before_action :set_paper_trail_whodunnit
  has_scope :search_products
  def index
    @products = apply_scopes(Product).page(params[:page]).per(10).order(type: :asc)
    # puts Feature.all
    # puts Hash[Product.all.map { |product| [product.model_number, product.id] }]
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        fetch_pdf
      end
    end
  end

  def new
    @product = Product.new
    puts 'new called'
  end

  def create
    # if permitted_params.product['type'].?empty || permitted_params.product.['model_number'].empty? 
    #   puts 'empty params'
    # end
    puts 'create called'
    puts permitted_params.product
    @models = Product.pluck('DISTINCT type')
    @product = Product.new(permitted_params.product)
    
    flash.now.alert = "Beware now!"

    if @product.save
      puts 'save successfully'
      redirect_to edit_product_path(@product)
    else
      puts 'record not saved'
      # redirect_to products_path
      puts @product.errors.full_messages
      flash[:notice] = "Failed to created new product - #{@product.errors.full_messages.join(', ')}"
      redirect_to products_url
    end
    # if !permitted_params.product.has_value?('')
    #   puts 'has no empty value'
    #   if @product.save
    #     puts 'save successfully'
    #     redirect_to edit_product_path(@product)
    #   else
    #     puts 'record not saved'
    #   end
    # else 
    #   puts 'record not saved'
    # end
  end

  def edit; end
  def update
    if @product.update(permitted_params.product)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  def history
    puts 'in history'
    puts @product.id
    respond_to do |format|
      format.json do
        render json: json_success_response('/products/modal_product_history', product: @product), status: :ok
      end
    end
  end

  def model_selection 
    puts 'in model selection'
    @product = Product.new
    @models = Product.pluck('DISTINCT type')
    puts @models
    respond_to do |format|
      format.json do
        render json: json_success_response('/products/model_selection', models: @models), status: :ok
      end
    end
    # render partial: "/products/model_selection", object: @models

  end

  private
  def load_product
    @product = Product.friendly.find params[:id]
    # puts @product.approvals.to_yaml
  end

  def fetch_pdf
    case params.fetch('pdf', '')
    when 'silent-salesmen'
      pdf = ::ProductPdf::SummarySheet.new(@product)
      filename = 'silent-salesment.pdf'
    else
      pdf = ::ProductPdf::SpecSheet.new(@product)
      filename = 'product_spec.pdf'
    end
    send_data pdf.render, filename: 'product_spec.pdf', type: 'application/pdf', disposition: 'attachment'
  end

end

