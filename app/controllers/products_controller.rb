class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_product, only: %i[edit update destroy]

  def index
    @products = Product.all
    @products = @products.order(params[:sort_by]) if params[:sort_by].present?
  end

  def show
    @basket_item = BasketItem.new
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product), notice: "Product saved successfully"
    else
      flash.now[:alert] = "Failed to save product: " + @product.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end


  def edit; end

  def update
    if @product.update(product_params)
      redirect_to root_path, notice: "Product updated successfully"
    else
      render :edit, notice: "Something went wrong, try again!", status: :unprocessable_entity
    end
  end

  def destroy
    @product.delete
    redirect_to my_products_path, notice: 'Product was successfully deleted.'
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :category, :image_url, :detailed_description, :ingredients, :nutritional_info, :chef_note, :supernatural_effects)
  end


end
