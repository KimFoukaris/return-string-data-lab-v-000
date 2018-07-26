class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def description
      product = Product.find(params[:id])
      render plain: product.description
    end

  def inventory
    product = Product.find(params[:id])
    available = (product > 0 ? true : false)
    return available
  end

end
