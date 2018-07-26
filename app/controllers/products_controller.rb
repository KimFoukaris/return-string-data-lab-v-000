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
    if product.inventory > 0
      return true
    else
      return false
    end
  end

end
