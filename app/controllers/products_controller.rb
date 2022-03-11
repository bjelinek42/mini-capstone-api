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

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:input_name]
    product.price = params[:input_price]
    product.image_url = params[:input_url]
    product.description = params[:input_description]
    product.save
    render json: product
  end


end
