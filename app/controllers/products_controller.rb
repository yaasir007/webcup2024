class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_product, only: %i[edit update destroy]

  def index
    @products = Product.all
  end

  def show
    @basket_item = BasketItem.new
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to my_products_path, notice: "Product saved successfully"
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

  def product_params
    params.require(:product).permit(:title, :description, :price, :category, :image_url, :detailed_description, :ingredients, :nutritional_info, :chef_note, :supernatural_effects)
  end


end
