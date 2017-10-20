class ProductsController < ApplicationController
  #before_action :authenticate_user!
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to root_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to root_path
  end

  def show
  end

private
  def product_params
    params.require(:product).permit(:name, :detail, :price, :stock, :photo)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
