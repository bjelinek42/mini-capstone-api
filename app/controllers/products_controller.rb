class ProductsController < ApplicationController

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description])
    product.save
    render json: product
  end


end
