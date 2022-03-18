class ProductsController < ApplicationController

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def index
    @products = Product.all
    render template: "products/index"
  end

  def create
    @product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description])
    
    
    if @product.save
      render template: "products/show"
    else
      render json: {error: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:input_name]
    @product.price = params[:input_price]
    @product.image_url = params[:input_url]
    @product.description = params[:input_description]

    if @product.save
      render template: "products/show"
    else
      render json: {error: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
  end


end
