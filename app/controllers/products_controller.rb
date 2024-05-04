class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to root_path, notice: "Product saved successfully"
    else
      render :new, notice: "Something went wrong, try again!", status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @product.update(params_product)
      redirect_to root_path, notice: "Product updated successfully"
    else
      render :edit, notice: "Something went wrong, try again!", status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def params_product
    params.require(:product).permit(:title, :description, :price, :category)
  end
end
