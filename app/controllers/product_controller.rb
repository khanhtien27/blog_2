class ProductController < ApplicationController
  def index
    @products = Product.all
  end

  def add_product
    @product = Product.new
  end

  def add_product_post
    @product = Product.new(params_product)
    @product.id = Time.current.to_formatted_s(:number)
    if @product.save
      redirect_to root_path
    else
      render :add_product, status: :unprocessable_entity
    end
  end

  def edit_product
    @product = Product.find(params[:id])
  end
  def edit_product_post
    if @product.update(params_product)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  #method self define
  private
  def params_product
    params.require(:product).permit(:name, :quality, :description)
  end
end
